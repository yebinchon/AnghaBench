
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qstr {int dummy; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_2__ {int i_mutex; } ;


 struct dentry* ERR_PTR (int) ;
 int MAY_EXEC ;
 int WARN_ON_ONCE (int) ;
 struct dentry* __lookup_hash (struct qstr*,struct dentry*,int *) ;
 int __lookup_one_len (char const*,struct qstr*,struct dentry*,int) ;
 int inode_permission (TYPE_1__*,int ) ;
 int mutex_is_locked (int *) ;

struct dentry *lookup_one_len(const char *name, struct dentry *base, int len)
{
 int err;
 struct qstr this;

 WARN_ON_ONCE(!mutex_is_locked(&base->d_inode->i_mutex));

 err = __lookup_one_len(name, &this, base, len);
 if (err)
  return ERR_PTR(err);

 err = inode_permission(base->d_inode, MAY_EXEC);
 if (err)
  return ERR_PTR(err);
 return __lookup_hash(&this, base, ((void*)0));
}
