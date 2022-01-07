
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct writeback_control {int dummy; } ;
struct inode {TYPE_2__* i_sb; } ;
struct TYPE_4__ {TYPE_1__* s_op; } ;
struct TYPE_3__ {int (* write_inode ) (struct inode*,struct writeback_control*) ;} ;


 int is_bad_inode (struct inode*) ;
 int stub1 (struct inode*,struct writeback_control*) ;

__attribute__((used)) static int write_inode(struct inode *inode, struct writeback_control *wbc)
{
 if (inode->i_sb->s_op->write_inode && !is_bad_inode(inode))
  return inode->i_sb->s_op->write_inode(inode, wbc);
 return 0;
}
