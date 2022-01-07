
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ocfs2_orphan_scan {scalar_t__ os_seqno; int os_scantime; int os_count; int os_state; } ;
struct ocfs2_super {int max_slots; int journal; struct ocfs2_orphan_scan osb_orphan_scan; } ;


 int CURRENT_TIME ;
 int EAGAIN ;
 scalar_t__ ORPHAN_SCAN_INACTIVE ;
 scalar_t__ atomic_read (int *) ;
 int mlog_errno (int) ;
 int ocfs2_orphan_scan_lock (struct ocfs2_super*,scalar_t__*) ;
 int ocfs2_orphan_scan_unlock (struct ocfs2_super*,scalar_t__) ;
 int ocfs2_queue_recovery_completion (int ,int,int *,int *,int *) ;

void ocfs2_queue_orphan_scan(struct ocfs2_super *osb)
{
 struct ocfs2_orphan_scan *os;
 int status, i;
 u32 seqno = 0;

 os = &osb->osb_orphan_scan;

 if (atomic_read(&os->os_state) == ORPHAN_SCAN_INACTIVE)
  goto out;

 status = ocfs2_orphan_scan_lock(osb, &seqno);
 if (status < 0) {
  if (status != -EAGAIN)
   mlog_errno(status);
  goto out;
 }


 if (atomic_read(&os->os_state) == ORPHAN_SCAN_INACTIVE)
  goto unlock;

 if (os->os_seqno != seqno) {
  os->os_seqno = seqno;
  goto unlock;
 }

 for (i = 0; i < osb->max_slots; i++)
  ocfs2_queue_recovery_completion(osb->journal, i, ((void*)0), ((void*)0),
      ((void*)0));




 seqno++;
 os->os_count++;
 os->os_scantime = CURRENT_TIME;
unlock:
 ocfs2_orphan_scan_unlock(osb, seqno);
out:
 return;
}
