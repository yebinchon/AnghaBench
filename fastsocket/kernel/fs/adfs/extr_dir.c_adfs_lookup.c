
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_info {int dummy; } ;
struct nameidata {int dummy; } ;
struct inode {int i_sb; } ;
struct dentry {int d_name; int * d_op; } ;


 int EACCES ;
 struct dentry* ERR_PTR (int) ;
 int adfs_dentry_operations ;
 int adfs_dir_lookup_byname (struct inode*,int *,struct object_info*) ;
 struct inode* adfs_iget (int ,struct object_info*) ;
 int d_add (struct dentry*,struct inode*) ;
 int lock_kernel () ;
 int unlock_kernel () ;

__attribute__((used)) static struct dentry *
adfs_lookup(struct inode *dir, struct dentry *dentry, struct nameidata *nd)
{
 struct inode *inode = ((void*)0);
 struct object_info obj;
 int error;

 dentry->d_op = &adfs_dentry_operations;
 lock_kernel();
 error = adfs_dir_lookup_byname(dir, &dentry->d_name, &obj);
 if (error == 0) {
  error = -EACCES;




  inode = adfs_iget(dir->i_sb, &obj);
  if (inode)
   error = 0;
 }
 unlock_kernel();
 d_add(dentry, inode);
 return ERR_PTR(error);
}
