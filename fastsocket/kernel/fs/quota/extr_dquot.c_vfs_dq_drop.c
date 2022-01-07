
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {TYPE_2__* i_sb; scalar_t__* i_dquot; } ;
struct TYPE_4__ {TYPE_1__* dq_op; } ;
struct TYPE_3__ {int (* drop ) (struct inode*) ;} ;


 int IS_NOQUOTA (struct inode*) ;
 int MAXQUOTAS ;
 int stub1 (struct inode*) ;

void vfs_dq_drop(struct inode *inode)
{



 if (!IS_NOQUOTA(inode) && inode->i_sb && inode->i_sb->dq_op
     && inode->i_sb->dq_op->drop) {
  int cnt;





  for (cnt = 0; cnt < MAXQUOTAS; cnt++)
   if (inode->i_dquot[cnt])
    break;
  if (cnt < MAXQUOTAS)
   inode->i_sb->dq_op->drop(inode);
 }
}
