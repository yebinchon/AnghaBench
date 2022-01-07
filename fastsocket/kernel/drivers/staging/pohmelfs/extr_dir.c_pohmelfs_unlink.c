
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int pohmelfs_remove_entry (struct inode*,struct dentry*) ;

__attribute__((used)) static int pohmelfs_unlink(struct inode *dir, struct dentry *dentry)
{
 return pohmelfs_remove_entry(dir, dentry);
}
