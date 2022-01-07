
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct ext4_iloc {int bh; } ;
typedef int handle_t ;


 int I_VERSION ;
 int ext4_do_update_inode (int *,struct inode*,struct ext4_iloc*) ;
 int get_bh (int ) ;
 int inode_inc_iversion (struct inode*) ;
 int put_bh (int ) ;
 scalar_t__ test_opt (int ,int ) ;

int ext4_mark_iloc_dirty(handle_t *handle,
    struct inode *inode, struct ext4_iloc *iloc)
{
 int err = 0;

 if (test_opt(inode->i_sb, I_VERSION))
  inode_inc_iversion(inode);


 get_bh(iloc->bh);


 err = ext4_do_update_inode(handle, inode, iloc);
 put_bh(iloc->bh);
 return err;
}
