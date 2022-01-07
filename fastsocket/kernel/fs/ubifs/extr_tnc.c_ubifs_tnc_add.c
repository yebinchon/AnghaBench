
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_znode {struct ubifs_zbranch* zbranch; } ;
struct ubifs_zbranch {int lnum; int offs; int len; int key; int * znode; } ;
struct ubifs_info {int tnc_mutex; } ;


 int DBGKEY (union ubifs_key const*) ;
 int dbg_check_tnc (struct ubifs_info*,int ) ;
 int dbg_tnc (char*,int,int,int,int ) ;
 int key_copy (struct ubifs_info*,union ubifs_key const*,int *) ;
 int lnc_free (struct ubifs_zbranch*) ;
 int lookup_level0_dirty (struct ubifs_info*,union ubifs_key const*,struct ubifs_znode**,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tnc_insert (struct ubifs_info*,struct ubifs_znode*,struct ubifs_zbranch*,int) ;
 int ubifs_add_dirt (struct ubifs_info*,int,int) ;

int ubifs_tnc_add(struct ubifs_info *c, const union ubifs_key *key, int lnum,
    int offs, int len)
{
 int found, n, err = 0;
 struct ubifs_znode *znode;

 mutex_lock(&c->tnc_mutex);
 dbg_tnc("%d:%d, len %d, key %s", lnum, offs, len, DBGKEY(key));
 found = lookup_level0_dirty(c, key, &znode, &n);
 if (!found) {
  struct ubifs_zbranch zbr;

  zbr.znode = ((void*)0);
  zbr.lnum = lnum;
  zbr.offs = offs;
  zbr.len = len;
  key_copy(c, key, &zbr.key);
  err = tnc_insert(c, znode, &zbr, n + 1);
 } else if (found == 1) {
  struct ubifs_zbranch *zbr = &znode->zbranch[n];

  lnc_free(zbr);
  err = ubifs_add_dirt(c, zbr->lnum, zbr->len);
  zbr->lnum = lnum;
  zbr->offs = offs;
  zbr->len = len;
 } else
  err = found;
 if (!err)
  err = dbg_check_tnc(c, 0);
 mutex_unlock(&c->tnc_mutex);

 return err;
}
