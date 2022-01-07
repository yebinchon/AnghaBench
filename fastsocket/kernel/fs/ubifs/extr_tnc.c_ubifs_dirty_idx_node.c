
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_znode {int dummy; } ;
struct ubifs_info {int tnc_mutex; } ;


 scalar_t__ IS_ERR (struct ubifs_znode*) ;
 int PTR_ERR (struct ubifs_znode*) ;
 struct ubifs_znode* dirty_cow_bottom_up (struct ubifs_info*,struct ubifs_znode*) ;
 struct ubifs_znode* lookup_znode (struct ubifs_info*,union ubifs_key*,int,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int ubifs_dirty_idx_node(struct ubifs_info *c, union ubifs_key *key, int level,
    int lnum, int offs)
{
 struct ubifs_znode *znode;
 int err = 0;

 mutex_lock(&c->tnc_mutex);
 znode = lookup_znode(c, key, level, lnum, offs);
 if (!znode)
  goto out_unlock;
 if (IS_ERR(znode)) {
  err = PTR_ERR(znode);
  goto out_unlock;
 }
 znode = dirty_cow_bottom_up(c, znode);
 if (IS_ERR(znode)) {
  err = PTR_ERR(znode);
  goto out_unlock;
 }

out_unlock:
 mutex_unlock(&c->tnc_mutex);
 return err;
}
