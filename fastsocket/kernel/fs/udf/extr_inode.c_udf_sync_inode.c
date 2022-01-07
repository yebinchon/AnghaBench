
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int udf_update_inode (struct inode*,int) ;

int udf_sync_inode(struct inode *inode)
{
 return udf_update_inode(inode, 1);
}
