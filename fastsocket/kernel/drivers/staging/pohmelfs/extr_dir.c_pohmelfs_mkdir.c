
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int S_IFDIR ;
 int inode_dec_link_count (struct inode*) ;
 int inode_inc_link_count (struct inode*) ;
 int pohmelfs_create_entry (struct inode*,struct dentry*,int ,int) ;

__attribute__((used)) static int pohmelfs_mkdir(struct inode *dir, struct dentry *dentry, int mode)
{
 int err;

 inode_inc_link_count(dir);
 err = pohmelfs_create_entry(dir, dentry, 0, mode | S_IFDIR);
 if (err)
  inode_dec_link_count(dir);

 return err;
}
