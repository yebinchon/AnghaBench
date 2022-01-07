
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ext3_iloc {int dummy; } ;
typedef int handle_t ;


 int _RET_IP_ ;
 int ext3_mark_iloc_dirty (int *,struct inode*,struct ext3_iloc*) ;
 int ext3_reserve_inode_write (int *,struct inode*,struct ext3_iloc*) ;
 int might_sleep () ;
 int trace_ext3_mark_inode_dirty (struct inode*,int ) ;

int ext3_mark_inode_dirty(handle_t *handle, struct inode *inode)
{
 struct ext3_iloc iloc;
 int err;

 might_sleep();
 trace_ext3_mark_inode_dirty(inode, _RET_IP_);
 err = ext3_reserve_inode_write(handle, inode, &iloc);
 if (!err)
  err = ext3_mark_iloc_dirty(handle, inode, &iloc);
 return err;
}
