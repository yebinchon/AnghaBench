
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nameidata {int dummy; } ;
struct inode {int i_sb; } ;
struct dentry {TYPE_2__* d_inode; int d_name; } ;
struct TYPE_6__ {struct dentry* proc_dentry; } ;
struct TYPE_5__ {int i_mutex; TYPE_1__* i_op; } ;
struct TYPE_4__ {struct dentry* (* lookup ) (TYPE_2__*,struct dentry*,int *) ;} ;


 int ENOENT ;
 int ENOMEM ;
 struct dentry* ERR_PTR (int) ;
 TYPE_3__* HPPFS_I (struct inode*) ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int d_add (struct dentry*,struct inode*) ;
 struct dentry* d_alloc (struct dentry*,int *) ;
 struct dentry* d_lookup (struct dentry*,int *) ;
 int dput (struct dentry*) ;
 int file_removed (struct dentry*,int *) ;
 struct inode* get_inode (int ,struct dentry*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct dentry* stub1 (TYPE_2__*,struct dentry*,int *) ;

__attribute__((used)) static struct dentry *hppfs_lookup(struct inode *ino, struct dentry *dentry,
       struct nameidata *nd)
{
 struct dentry *proc_dentry, *new, *parent;
 struct inode *inode;
 int err, deleted;

 deleted = file_removed(dentry, ((void*)0));
 if (deleted < 0)
  return ERR_PTR(deleted);
 else if (deleted)
  return ERR_PTR(-ENOENT);

 err = -ENOMEM;
 parent = HPPFS_I(ino)->proc_dentry;
 mutex_lock(&parent->d_inode->i_mutex);
 proc_dentry = d_lookup(parent, &dentry->d_name);
 if (proc_dentry == ((void*)0)) {
  proc_dentry = d_alloc(parent, &dentry->d_name);
  if (proc_dentry == ((void*)0)) {
   mutex_unlock(&parent->d_inode->i_mutex);
   goto out;
  }
  new = (*parent->d_inode->i_op->lookup)(parent->d_inode,
             proc_dentry, ((void*)0));
  if (new) {
   dput(proc_dentry);
   proc_dentry = new;
  }
 }
 mutex_unlock(&parent->d_inode->i_mutex);

 if (IS_ERR(proc_dentry))
  return proc_dentry;

 err = -ENOMEM;
 inode = get_inode(ino->i_sb, proc_dentry);
 if (!inode)
  goto out_dput;

  d_add(dentry, inode);
 return ((void*)0);

 out_dput:
 dput(proc_dentry);
 out:
 return ERR_PTR(err);
}
