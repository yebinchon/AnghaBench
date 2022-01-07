
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int * d_op; } ;


 int hpfs_dentry_operations ;

void hpfs_set_dentry_operations(struct dentry *dentry)
{
 dentry->d_op = &hpfs_dentry_operations;
}
