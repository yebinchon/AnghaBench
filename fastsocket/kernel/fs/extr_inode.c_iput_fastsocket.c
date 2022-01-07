
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {TYPE_2__* i_sb; int i_count; } ;
struct TYPE_4__ {TYPE_1__* s_op; } ;
struct TYPE_3__ {int (* destroy_inode ) (struct inode*) ;} ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int stub1 (struct inode*) ;

void iput_fastsocket(struct inode *inode)
{
 if (inode && atomic_dec_and_test(&inode->i_count)) {
  if (inode->i_sb && inode->i_sb->s_op && inode->i_sb->s_op->destroy_inode) {
   inode->i_sb->s_op->destroy_inode(inode);
   return;
  }
 }
}
