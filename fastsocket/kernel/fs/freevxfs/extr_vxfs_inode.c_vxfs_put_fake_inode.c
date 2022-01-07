
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int iput (struct inode*) ;

void
vxfs_put_fake_inode(struct inode *ip)
{
 iput(ip);
}
