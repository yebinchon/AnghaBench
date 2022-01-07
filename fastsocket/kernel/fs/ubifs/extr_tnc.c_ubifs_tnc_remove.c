
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_znode {int dummy; } ;
struct ubifs_info {int tnc_mutex; } ;


 int DBGKEY (union ubifs_key const*) ;
 int dbg_check_tnc (struct ubifs_info*,int ) ;
 int dbg_tnc (char*,int ) ;
 int lookup_level0_dirty (struct ubifs_info*,union ubifs_key const*,struct ubifs_znode**,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tnc_delete (struct ubifs_info*,struct ubifs_znode*,int) ;

int ubifs_tnc_remove(struct ubifs_info *c, const union ubifs_key *key)
{
 int found, n, err = 0;
 struct ubifs_znode *znode;

 mutex_lock(&c->tnc_mutex);
 dbg_tnc("key %s", DBGKEY(key));
 found = lookup_level0_dirty(c, key, &znode, &n);
 if (found < 0) {
  err = found;
  goto out_unlock;
 }
 if (found == 1)
  err = tnc_delete(c, znode, n);
 if (!err)
  err = dbg_check_tnc(c, 0);

out_unlock:
 mutex_unlock(&c->tnc_mutex);
 return err;
}
