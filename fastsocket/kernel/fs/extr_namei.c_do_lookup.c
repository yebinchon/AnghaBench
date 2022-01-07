
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct qstr {char* name; size_t len; } ;
struct path {struct dentry* dentry; struct vfsmount* mnt; } ;
struct TYPE_5__ {struct dentry* dentry; struct vfsmount* mnt; } ;
struct nameidata {int flags; TYPE_2__ path; } ;
struct inode {int i_mutex; TYPE_3__* i_op; } ;
struct dentry {struct inode* d_inode; TYPE_1__* d_op; } ;
struct TYPE_6__ {struct dentry* (* lookup ) (struct inode*,struct dentry*,struct nameidata*) ;} ;
struct TYPE_4__ {scalar_t__ d_revalidate; } ;


 int ENOENT ;
 int ENOMEM ;
 struct dentry* ERR_PTR (int ) ;
 scalar_t__ IS_DEADDIR (struct inode*) ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int LOOKUP_CONTINUE ;
 int LOOKUP_DIRECTORY ;
 int PTR_ERR (struct dentry*) ;
 struct dentry* __d_lookup (struct dentry*,struct qstr*) ;
 struct dentry* d_alloc (struct dentry*,struct qstr*) ;
 struct dentry* d_lookup (struct dentry*,struct qstr*) ;
 struct dentry* do_revalidate (struct dentry*,struct nameidata*) ;
 int dput (struct dentry*) ;
 int follow_managed (struct path*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int path_put_conditional (struct path*,struct nameidata*) ;
 struct dentry* stub1 (struct inode*,struct dentry*,struct nameidata*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int do_lookup(struct nameidata *nd, struct qstr *name,
       struct path *path)
{
 struct vfsmount *mnt = nd->path.mnt;
 struct dentry *dentry = __d_lookup(nd->path.dentry, name);
 int flags = nd->flags;
 struct dentry *parent;
 struct inode *dir;
 int err;

 if (!dentry)
  goto need_lookup;
found:
 if (dentry->d_op && dentry->d_op->d_revalidate)
  goto need_revalidate;
done:
 path->mnt = mnt;
 path->dentry = dentry;




 if (!(nd->flags & LOOKUP_CONTINUE) && name->name[name->len] == '/')
  flags |= LOOKUP_DIRECTORY;
 err = follow_managed(path, flags);
 if (unlikely(err < 0))
  path_put_conditional(path, nd);
 return err;

need_lookup:
 parent = nd->path.dentry;
 dir = parent->d_inode;

 mutex_lock(&dir->i_mutex);
 dentry = d_lookup(parent, name);
 if (!dentry) {
  struct dentry *new;


  dentry = ERR_PTR(-ENOENT);
  if (IS_DEADDIR(dir))
   goto out_unlock;

  new = d_alloc(parent, name);
  dentry = ERR_PTR(-ENOMEM);
  if (new) {
   dentry = dir->i_op->lookup(dir, new, nd);
   if (dentry)
    dput(new);
   else
    dentry = new;
  }
out_unlock:
  mutex_unlock(&dir->i_mutex);
  if (IS_ERR(dentry))
   goto fail;
  goto done;
 }





 mutex_unlock(&dir->i_mutex);
 goto found;

need_revalidate:
 dentry = do_revalidate(dentry, nd);
 if (!dentry)
  goto need_lookup;
 if (IS_ERR(dentry))
  goto fail;
 goto done;

fail:
 return PTR_ERR(dentry);
}
