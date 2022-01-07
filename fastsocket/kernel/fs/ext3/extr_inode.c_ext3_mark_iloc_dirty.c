
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ext3_iloc {int bh; } ;
typedef int handle_t ;


 int ext3_do_update_inode (int *,struct inode*,struct ext3_iloc*) ;
 int get_bh (int ) ;
 int put_bh (int ) ;

int ext3_mark_iloc_dirty(handle_t *handle,
  struct inode *inode, struct ext3_iloc *iloc)
{
 int err = 0;


 get_bh(iloc->bh);


 err = ext3_do_update_inode(handle, inode, iloc);
 put_bh(iloc->bh);
 return err;
}
