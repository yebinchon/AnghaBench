
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_orphan_scan {int os_lock; int os_orphan_scan_work; int os_state; } ;
struct ocfs2_super {struct ocfs2_orphan_scan osb_orphan_scan; } ;


 scalar_t__ ORPHAN_SCAN_ACTIVE ;
 int ORPHAN_SCAN_INACTIVE ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int cancel_delayed_work (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void ocfs2_orphan_scan_stop(struct ocfs2_super *osb)
{
 struct ocfs2_orphan_scan *os;

 os = &osb->osb_orphan_scan;
 if (atomic_read(&os->os_state) == ORPHAN_SCAN_ACTIVE) {
  atomic_set(&os->os_state, ORPHAN_SCAN_INACTIVE);
  mutex_lock(&os->os_lock);
  cancel_delayed_work(&os->os_orphan_scan_work);
  mutex_unlock(&os->os_lock);
 }
}
