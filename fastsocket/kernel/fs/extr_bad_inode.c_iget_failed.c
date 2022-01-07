
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int iput (struct inode*) ;
 int make_bad_inode (struct inode*) ;
 int unlock_new_inode (struct inode*) ;

void iget_failed(struct inode *inode)
{
 make_bad_inode(inode);
 unlock_new_inode(inode);
 iput(inode);
}
