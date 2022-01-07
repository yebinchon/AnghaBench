
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int S_IFDIR ;
 int omfs_add_node (struct inode*,struct dentry*,int) ;

__attribute__((used)) static int omfs_mkdir(struct inode *dir, struct dentry *dentry, int mode)
{
 return omfs_add_node(dir, dentry, mode | S_IFDIR);
}
