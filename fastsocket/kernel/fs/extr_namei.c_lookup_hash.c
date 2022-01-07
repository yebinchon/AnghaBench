
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* dentry; } ;
struct nameidata {TYPE_1__ path; int last; } ;
struct dentry {int dummy; } ;
struct TYPE_4__ {int d_inode; } ;


 struct dentry* ERR_PTR (int) ;
 int MAY_EXEC ;
 struct dentry* __lookup_hash (int *,TYPE_2__*,struct nameidata*) ;
 int inode_permission (int ,int ) ;

__attribute__((used)) static struct dentry *lookup_hash(struct nameidata *nd)
{
 int err;

 err = inode_permission(nd->path.dentry->d_inode, MAY_EXEC);
 if (err)
  return ERR_PTR(err);
 return __lookup_hash(&nd->last, nd->path.dentry, nd);
}
