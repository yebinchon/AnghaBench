
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nameidata {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int pohmelfs_create_entry (struct inode*,struct dentry*,int ,int) ;

__attribute__((used)) static int pohmelfs_create(struct inode *dir, struct dentry *dentry, int mode,
  struct nameidata *nd)
{
 return pohmelfs_create_entry(dir, dentry, 0, mode);
}
