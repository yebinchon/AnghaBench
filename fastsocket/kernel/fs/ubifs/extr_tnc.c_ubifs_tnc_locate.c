
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_znode {struct ubifs_zbranch* zbranch; } ;
struct ubifs_zbranch {int lnum; int offs; } ;
struct ubifs_info {int gc_seq; int tnc_mutex; } ;


 int ENOENT ;
 int fallible_read_node (struct ubifs_info*,union ubifs_key const*,struct ubifs_zbranch*,void*) ;
 scalar_t__ is_hash_key (struct ubifs_info*,union ubifs_key const*) ;
 scalar_t__ maybe_leb_gced (struct ubifs_info*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tnc_read_node_nm (struct ubifs_info*,struct ubifs_zbranch*,void*) ;
 scalar_t__ ubifs_get_wbuf (struct ubifs_info*,int) ;
 int ubifs_lookup_level0 (struct ubifs_info*,union ubifs_key const*,struct ubifs_znode**,int*) ;
 int ubifs_tnc_read_node (struct ubifs_info*,struct ubifs_zbranch*,void*) ;

int ubifs_tnc_locate(struct ubifs_info *c, const union ubifs_key *key,
       void *node, int *lnum, int *offs)
{
 int found, n, err, safely = 0, gc_seq1;
 struct ubifs_znode *znode;
 struct ubifs_zbranch zbr, *zt;

again:
 mutex_lock(&c->tnc_mutex);
 found = ubifs_lookup_level0(c, key, &znode, &n);
 if (!found) {
  err = -ENOENT;
  goto out;
 } else if (found < 0) {
  err = found;
  goto out;
 }
 zt = &znode->zbranch[n];
 if (lnum) {
  *lnum = zt->lnum;
  *offs = zt->offs;
 }
 if (is_hash_key(c, key)) {




  err = tnc_read_node_nm(c, zt, node);
  goto out;
 }
 if (safely) {
  err = ubifs_tnc_read_node(c, zt, node);
  goto out;
 }

 zbr = znode->zbranch[n];
 gc_seq1 = c->gc_seq;
 mutex_unlock(&c->tnc_mutex);

 if (ubifs_get_wbuf(c, zbr.lnum)) {

  err = ubifs_tnc_read_node(c, &zbr, node);
  return err;
 }

 err = fallible_read_node(c, key, &zbr, node);
 if (err <= 0 || maybe_leb_gced(c, zbr.lnum, gc_seq1)) {




  safely = 1;
  goto again;
 }
 return 0;

out:
 mutex_unlock(&c->tnc_mutex);
 return err;
}
