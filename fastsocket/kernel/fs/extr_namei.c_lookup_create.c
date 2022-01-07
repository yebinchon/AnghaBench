
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {size_t len; scalar_t__* name; } ;
struct TYPE_10__ {int flags; } ;
struct TYPE_11__ {TYPE_4__ open; } ;
struct TYPE_9__ {TYPE_2__* dentry; } ;
struct nameidata {scalar_t__ last_type; int flags; TYPE_6__ last; TYPE_5__ intent; TYPE_3__ path; } ;
struct dentry {scalar_t__ d_inode; } ;
struct TYPE_8__ {TYPE_1__* d_inode; } ;
struct TYPE_7__ {int i_mutex; } ;


 int EEXIST ;
 int ENOENT ;
 struct dentry* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int I_MUTEX_PARENT ;
 scalar_t__ LAST_NORM ;
 int LOOKUP_CREATE ;
 int LOOKUP_EXCL ;
 int LOOKUP_PARENT ;
 int O_EXCL ;
 int dput (struct dentry*) ;
 struct dentry* lookup_hash (struct nameidata*) ;
 int mutex_lock_nested (int *,int ) ;
 scalar_t__ unlikely (int) ;

struct dentry *lookup_create(struct nameidata *nd, int is_dir)
{
 struct dentry *dentry = ERR_PTR(-EEXIST);

 mutex_lock_nested(&nd->path.dentry->d_inode->i_mutex, I_MUTEX_PARENT);




 if (nd->last_type != LAST_NORM)
  goto fail;
 nd->flags &= ~LOOKUP_PARENT;
 nd->flags |= LOOKUP_CREATE | LOOKUP_EXCL;
 nd->intent.open.flags = O_EXCL;




 dentry = lookup_hash(nd);
 if (IS_ERR(dentry))
  goto fail;

 if (dentry->d_inode)
  goto eexist;






 if (unlikely(!is_dir && nd->last.name[nd->last.len])) {
  dput(dentry);
  dentry = ERR_PTR(-ENOENT);
 }
 return dentry;
eexist:
 dput(dentry);
 dentry = ERR_PTR(-EEXIST);
fail:
 return dentry;
}
