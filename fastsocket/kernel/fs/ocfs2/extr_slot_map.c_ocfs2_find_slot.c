
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int slot_num; int osb_lock; int node_num; int preferred_slot; struct ocfs2_slot_info* slot_info; } ;
struct ocfs2_slot_info {int dummy; } ;


 int EINVAL ;
 int ML_ERROR ;
 int ML_NOTICE ;
 int __ocfs2_find_empty_slot (struct ocfs2_slot_info*,int ) ;
 int __ocfs2_node_num_to_slot (struct ocfs2_slot_info*,int ) ;
 int mlog (int ,char*,...) ;
 int mlog_entry_void () ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 int ocfs2_set_slot (struct ocfs2_slot_info*,int,int ) ;
 int ocfs2_update_disk_slot (struct ocfs2_super*,struct ocfs2_slot_info*,int) ;
 int ocfs2_update_slot_info (struct ocfs2_slot_info*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int ocfs2_find_slot(struct ocfs2_super *osb)
{
 int status;
 int slot;
 struct ocfs2_slot_info *si;

 mlog_entry_void();

 si = osb->slot_info;

 spin_lock(&osb->osb_lock);
 ocfs2_update_slot_info(si);





 slot = __ocfs2_node_num_to_slot(si, osb->node_num);
 if (slot < 0) {


  slot = __ocfs2_find_empty_slot(si, osb->preferred_slot);
  if (slot < 0) {
   spin_unlock(&osb->osb_lock);
   mlog(ML_ERROR, "no free slots available!\n");
   status = -EINVAL;
   goto bail;
  }
 } else
  mlog(ML_NOTICE, "slot %d is already allocated to this node!\n",
       slot);

 ocfs2_set_slot(si, slot, osb->node_num);
 osb->slot_num = slot;
 spin_unlock(&osb->osb_lock);

 mlog(0, "taking node slot %d\n", osb->slot_num);

 status = ocfs2_update_disk_slot(osb, si, osb->slot_num);
 if (status < 0)
  mlog_errno(status);

bail:
 mlog_exit(status);
 return status;
}
