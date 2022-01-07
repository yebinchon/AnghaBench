
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exofs_i_info {int vfs_inode; int i_wq; } ;


 int BUG_ON (int) ;
 int EIO ;
 int is_bad_inode (int *) ;
 int obj_2bcreated (struct exofs_i_info*) ;
 int obj_created (struct exofs_i_info*) ;
 scalar_t__ unlikely (int ) ;
 int wait_event (int ,int ) ;

int __exofs_wait_obj_created(struct exofs_i_info *oi)
{
 if (!obj_created(oi)) {
  BUG_ON(!obj_2bcreated(oi));
  wait_event(oi->i_wq, obj_created(oi));
 }
 return unlikely(is_bad_inode(&oi->vfs_inode)) ? -EIO : 0;
}
