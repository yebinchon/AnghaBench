
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_znode {struct ubifs_zbranch* zbranch; } ;
struct ubifs_zbranch {union ubifs_key key; int len; } ;
struct ubifs_info {int tnc_mutex; } ;
struct ubifs_dent_node {int dummy; } ;
struct qstr {scalar_t__ name; } ;


 int DBGKEY (union ubifs_key*) ;
 int ENOENT ;
 int ENOMEM ;
 struct ubifs_dent_node* ERR_PTR (int) ;
 int GFP_NOFS ;
 int dbg_tnc (char*,...) ;
 int is_hash_key (struct ubifs_info*,union ubifs_key*) ;
 scalar_t__ key_inum (struct ubifs_info*,union ubifs_key*) ;
 int key_type (struct ubifs_info*,union ubifs_key*) ;
 int kfree (struct ubifs_dent_node*) ;
 struct ubifs_dent_node* kmalloc (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int resolve_collision (struct ubifs_info*,union ubifs_key*,struct ubifs_znode**,int*,struct qstr const*) ;
 int tnc_next (struct ubifs_info*,struct ubifs_znode**,int*) ;
 int tnc_read_node_nm (struct ubifs_info*,struct ubifs_zbranch*,struct ubifs_dent_node*) ;
 int ubifs_assert (int ) ;
 int ubifs_lookup_level0 (struct ubifs_info*,union ubifs_key*,struct ubifs_znode**,int*) ;
 scalar_t__ unlikely (int) ;

struct ubifs_dent_node *ubifs_tnc_next_ent(struct ubifs_info *c,
        union ubifs_key *key,
        const struct qstr *nm)
{
 int n, err, type = key_type(c, key);
 struct ubifs_znode *znode;
 struct ubifs_dent_node *dent;
 struct ubifs_zbranch *zbr;
 union ubifs_key *dkey;

 dbg_tnc("%s %s", nm->name ? (char *)nm->name : "(lowest)", DBGKEY(key));
 ubifs_assert(is_hash_key(c, key));

 mutex_lock(&c->tnc_mutex);
 err = ubifs_lookup_level0(c, key, &znode, &n);
 if (unlikely(err < 0))
  goto out_unlock;

 if (nm->name) {
  if (err) {

   err = resolve_collision(c, key, &znode, &n, nm);
   dbg_tnc("rc returned %d, znode %p, n %d",
    err, znode, n);
   if (unlikely(err < 0))
    goto out_unlock;
  }


  err = tnc_next(c, &znode, &n);
  if (unlikely(err))
   goto out_unlock;
 } else {





  if (!err) {





   err = tnc_next(c, &znode, &n);
   if (err)
    goto out_unlock;
  }
 }

 zbr = &znode->zbranch[n];
 dent = kmalloc(zbr->len, GFP_NOFS);
 if (unlikely(!dent)) {
  err = -ENOMEM;
  goto out_unlock;
 }





 dkey = &zbr->key;
 if (key_inum(c, dkey) != key_inum(c, key) ||
     key_type(c, dkey) != type) {
  err = -ENOENT;
  goto out_free;
 }

 err = tnc_read_node_nm(c, zbr, dent);
 if (unlikely(err))
  goto out_free;

 mutex_unlock(&c->tnc_mutex);
 return dent;

out_free:
 kfree(dent);
out_unlock:
 mutex_unlock(&c->tnc_mutex);
 return ERR_PTR(err);
}
