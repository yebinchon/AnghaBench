
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct TYPE_3__ {struct vfsmount* mnt; struct dentry* dentry; } ;
struct nameidata {unsigned int flags; TYPE_1__ root; TYPE_1__ path; scalar_t__ depth; int last_type; } ;
struct filename {char const* name; } ;
struct dentry {scalar_t__ d_inode; } ;


 int LAST_ROOT ;
 unsigned int LOOKUP_PARENT ;
 int audit_dummy_context () ;
 int audit_inode (struct filename*,struct dentry*,unsigned int) ;
 int path_get (TYPE_1__*) ;
 int path_put (TYPE_1__*) ;
 int path_walk (struct filename*,struct nameidata*) ;
 scalar_t__ unlikely (int) ;

int vfs_path_lookup(struct dentry *dentry, struct vfsmount *mnt,
      const char *name, unsigned int flags,
      struct nameidata *nd)
{
 int retval;
 struct filename filename = { .name = name };


 nd->last_type = LAST_ROOT;
 nd->flags = flags;
 nd->depth = 0;

 nd->path.dentry = dentry;
 nd->path.mnt = mnt;
 path_get(&nd->path);
 nd->root = nd->path;
 path_get(&nd->root);

 retval = path_walk(&filename, nd);
 if (unlikely(!retval && !audit_dummy_context() && nd->path.dentry &&
    nd->path.dentry->d_inode))
  audit_inode(&filename, nd->path.dentry, flags & LOOKUP_PARENT);

 path_put(&nd->root);
 nd->root.mnt = ((void*)0);

 return retval;
}
