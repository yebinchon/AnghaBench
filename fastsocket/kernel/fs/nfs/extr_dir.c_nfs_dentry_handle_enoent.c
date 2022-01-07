
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int * d_inode; } ;


 int d_delete (struct dentry*) ;
 int d_unhashed (struct dentry*) ;

__attribute__((used)) static void nfs_dentry_handle_enoent(struct dentry *dentry)
{
 if (dentry->d_inode != ((void*)0) && !d_unhashed(dentry))
  d_delete(dentry);
}
