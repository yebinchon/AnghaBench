
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {struct ocfs2_slot_info* slot_info; int osb_lock; } ;
struct ocfs2_slot_info {int dummy; } ;


 int ocfs2_invalidate_slot (struct ocfs2_slot_info*,int) ;
 int ocfs2_update_disk_slot (struct ocfs2_super*,struct ocfs2_slot_info*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int ocfs2_clear_slot(struct ocfs2_super *osb, int slot_num)
{
 struct ocfs2_slot_info *si = osb->slot_info;

 if (si == ((void*)0))
  return 0;

 spin_lock(&osb->osb_lock);
 ocfs2_invalidate_slot(si, slot_num);
 spin_unlock(&osb->osb_lock);

 return ocfs2_update_disk_slot(osb, osb->slot_info, slot_num);
}
