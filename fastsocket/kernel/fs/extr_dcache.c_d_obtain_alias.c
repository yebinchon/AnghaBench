
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qstr {char* name; } ;
struct inode {int d_lock; TYPE_1__* i_sb; int d_hash; int i_dentry; int d_alias; int d_flags; struct inode* d_inode; TYPE_1__* d_sb; struct inode* d_parent; } ;
struct dentry {int d_lock; TYPE_1__* i_sb; int d_hash; int i_dentry; int d_alias; int d_flags; struct dentry* d_inode; TYPE_1__* d_sb; struct dentry* d_parent; } ;
struct TYPE_2__ {int s_anon; } ;


 int DCACHE_DISCONNECTED ;
 int DCACHE_UNHASHED ;
 int ENOMEM ;
 struct inode* ERR_CAST (struct inode*) ;
 struct inode* ERR_PTR (int ) ;
 int ESTALE ;
 scalar_t__ IS_ERR (struct inode*) ;
 struct inode* __d_find_any_alias (struct inode*) ;
 struct inode* d_alloc (int *,struct qstr const*) ;
 struct inode* d_find_any_alias (struct inode*) ;
 int dcache_lock ;
 int dput (struct inode*) ;
 int hlist_add_head (int *,int *) ;
 int iput (struct inode*) ;
 int list_add (int *,int *) ;
 int security_d_instantiate (struct inode*,struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct dentry *d_obtain_alias(struct inode *inode)
{
 static const struct qstr anonstring = { .name = "" };
 struct dentry *tmp;
 struct dentry *res;

 if (!inode)
  return ERR_PTR(-ESTALE);
 if (IS_ERR(inode))
  return ERR_CAST(inode);

 res = d_find_any_alias(inode);
 if (res)
  goto out_iput;

 tmp = d_alloc(((void*)0), &anonstring);
 if (!tmp) {
  res = ERR_PTR(-ENOMEM);
  goto out_iput;
 }
 tmp->d_parent = tmp;

 spin_lock(&dcache_lock);
 res = __d_find_any_alias(inode);
 if (res) {
  spin_unlock(&dcache_lock);
  dput(tmp);
  goto out_iput;
 }


 spin_lock(&tmp->d_lock);
 tmp->d_sb = inode->i_sb;
 tmp->d_inode = inode;
 tmp->d_flags |= DCACHE_DISCONNECTED;
 tmp->d_flags &= ~DCACHE_UNHASHED;
 list_add(&tmp->d_alias, &inode->i_dentry);
 hlist_add_head(&tmp->d_hash, &inode->i_sb->s_anon);
 spin_unlock(&tmp->d_lock);
 spin_unlock(&dcache_lock);

 security_d_instantiate(tmp, inode);
 return tmp;

 out_iput:
 if (res && !IS_ERR(res))
  security_d_instantiate(res, inode);
 iput(inode);
 return res;
}
