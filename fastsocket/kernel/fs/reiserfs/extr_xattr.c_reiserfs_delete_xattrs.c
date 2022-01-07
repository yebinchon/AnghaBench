
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;


 int delete_one_xattr ;
 int reiserfs_for_each_xattr (struct inode*,int ,int *) ;
 int reiserfs_warning (int ,char*,char*,int) ;

int reiserfs_delete_xattrs(struct inode *inode)
{
 int err = reiserfs_for_each_xattr(inode, delete_one_xattr, ((void*)0));
 if (err)
  reiserfs_warning(inode->i_sb, "jdm-20004",
     "Couldn't delete all xattrs (%d)\n", err);
 return err;
}
