
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proc_dir_entry {scalar_t__ namelen; unsigned int low_ino; int name; struct proc_dir_entry* next; struct proc_dir_entry* subdir; } ;
struct inode {int i_sb; } ;
struct TYPE_2__ {scalar_t__ len; int name; } ;
struct dentry {int * d_op; TYPE_1__ d_name; } ;


 int EINVAL ;
 int ENOENT ;
 struct dentry* ERR_PTR (int) ;
 int d_add (struct dentry*,struct inode*) ;
 int de_get (struct proc_dir_entry*) ;
 int de_put (struct proc_dir_entry*) ;
 int memcmp (int ,int ,scalar_t__) ;
 int proc_dentry_operations ;
 struct inode* proc_get_inode (int ,unsigned int,struct proc_dir_entry*) ;
 int proc_subdir_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct dentry *proc_lookup_de(struct proc_dir_entry *de, struct inode *dir,
  struct dentry *dentry)
{
 struct inode *inode = ((void*)0);
 int error = -ENOENT;

 spin_lock(&proc_subdir_lock);
 for (de = de->subdir; de ; de = de->next) {
  if (de->namelen != dentry->d_name.len)
   continue;
  if (!memcmp(dentry->d_name.name, de->name, de->namelen)) {
   unsigned int ino;

   ino = de->low_ino;
   de_get(de);
   spin_unlock(&proc_subdir_lock);
   error = -EINVAL;
   inode = proc_get_inode(dir->i_sb, ino, de);
   goto out_unlock;
  }
 }
 spin_unlock(&proc_subdir_lock);
out_unlock:

 if (inode) {
  dentry->d_op = &proc_dentry_operations;
  d_add(dentry, inode);
  return ((void*)0);
 }
 if (de)
  de_put(de);
 return ERR_PTR(error);
}
