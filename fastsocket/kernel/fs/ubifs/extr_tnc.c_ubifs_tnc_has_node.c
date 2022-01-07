
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_info {int tnc_mutex; } ;


 int BUG_ON (int) ;
 int is_idx_node_in_tnc (struct ubifs_info*,union ubifs_key*,int,int,int) ;
 int is_leaf_node_in_tnc (struct ubifs_info*,union ubifs_key*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int ubifs_tnc_has_node(struct ubifs_info *c, union ubifs_key *key, int level,
         int lnum, int offs, int is_idx)
{
 int err;

 mutex_lock(&c->tnc_mutex);
 if (is_idx) {
  err = is_idx_node_in_tnc(c, key, level, lnum, offs);
  if (err < 0)
   goto out_unlock;
  if (err == 1)

   err = 0;
  else if (err == 2)

   err = 1;
  else
   BUG_ON(err != 0);
 } else
  err = is_leaf_node_in_tnc(c, key, lnum, offs);

out_unlock:
 mutex_unlock(&c->tnc_mutex);
 return err;
}
