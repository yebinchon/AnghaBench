
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_znode {int child_cnt; int level; struct ubifs_zbranch* zbranch; } ;
struct ubifs_zbranch {scalar_t__ lnum; int offs; scalar_t__ len; union ubifs_key key; int * znode; } ;
struct ubifs_info {int fanout; scalar_t__ main_first; scalar_t__ leb_cnt; scalar_t__ leb_size; TYPE_1__* ranges; int max_idx_node_sz; } ;
struct ubifs_idx_node {int level; int child_cnt; } ;
struct ubifs_branch {int len; int offs; int lnum; int key; } ;
struct TYPE_2__ {scalar_t__ max_len; scalar_t__ len; int min_len; } ;


 int DBGKEY (union ubifs_key*) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_NOFS ;


 int UBIFS_IDX_NODE ;

 int UBIFS_MAX_LEVELS ;

 int dbg_dump_node (struct ubifs_info*,struct ubifs_idx_node*) ;
 int dbg_err (char*,int,...) ;
 int dbg_msg (char*,int,int ) ;
 int dbg_tnc (char*,int,int,int,int) ;
 int is_hash_key (struct ubifs_info*,union ubifs_key const*) ;
 int key_read (struct ubifs_info*,int *,union ubifs_key*) ;
 int key_type (struct ubifs_info*,union ubifs_key*) ;
 int keys_cmp (struct ubifs_info*,union ubifs_key const*,union ubifs_key const*) ;
 int kfree (struct ubifs_idx_node*) ;
 struct ubifs_idx_node* kmalloc (int ,int ) ;
 void* le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;
 int ubifs_err (char*,int,int,int) ;
 struct ubifs_branch* ubifs_idx_branch (struct ubifs_info*,struct ubifs_idx_node*,int) ;
 int ubifs_read_node (struct ubifs_info*,struct ubifs_idx_node*,int ,int,int,int) ;

__attribute__((used)) static int read_znode(struct ubifs_info *c, int lnum, int offs, int len,
        struct ubifs_znode *znode)
{
 int i, err, type, cmp;
 struct ubifs_idx_node *idx;

 idx = kmalloc(c->max_idx_node_sz, GFP_NOFS);
 if (!idx)
  return -ENOMEM;

 err = ubifs_read_node(c, idx, UBIFS_IDX_NODE, len, lnum, offs);
 if (err < 0) {
  kfree(idx);
  return err;
 }

 znode->child_cnt = le16_to_cpu(idx->child_cnt);
 znode->level = le16_to_cpu(idx->level);

 dbg_tnc("LEB %d:%d, level %d, %d branch",
  lnum, offs, znode->level, znode->child_cnt);

 if (znode->child_cnt > c->fanout || znode->level > UBIFS_MAX_LEVELS) {
  dbg_err("current fanout %d, branch count %d",
   c->fanout, znode->child_cnt);
  dbg_err("max levels %d, znode level %d",
   UBIFS_MAX_LEVELS, znode->level);
  err = 1;
  goto out_dump;
 }

 for (i = 0; i < znode->child_cnt; i++) {
  const struct ubifs_branch *br = ubifs_idx_branch(c, idx, i);
  struct ubifs_zbranch *zbr = &znode->zbranch[i];

  key_read(c, &br->key, &zbr->key);
  zbr->lnum = le32_to_cpu(br->lnum);
  zbr->offs = le32_to_cpu(br->offs);
  zbr->len = le32_to_cpu(br->len);
  zbr->znode = ((void*)0);



  if (zbr->lnum < c->main_first ||
      zbr->lnum >= c->leb_cnt || zbr->offs < 0 ||
      zbr->offs + zbr->len > c->leb_size || zbr->offs & 7) {
   dbg_err("bad branch %d", i);
   err = 2;
   goto out_dump;
  }

  switch (key_type(c, &zbr->key)) {
  case 129:
  case 131:
  case 130:
  case 128:
   break;
  default:
   dbg_msg("bad key type at slot %d: %s", i,
    DBGKEY(&zbr->key));
   err = 3;
   goto out_dump;
  }

  if (znode->level)
   continue;

  type = key_type(c, &zbr->key);
  if (c->ranges[type].max_len == 0) {
   if (zbr->len != c->ranges[type].len) {
    dbg_err("bad target node (type %d) length (%d)",
     type, zbr->len);
    dbg_err("have to be %d", c->ranges[type].len);
    err = 4;
    goto out_dump;
   }
  } else if (zbr->len < c->ranges[type].min_len ||
      zbr->len > c->ranges[type].max_len) {
   dbg_err("bad target node (type %d) length (%d)",
    type, zbr->len);
   dbg_err("have to be in range of %d-%d",
    c->ranges[type].min_len,
    c->ranges[type].max_len);
   err = 5;
   goto out_dump;
  }
 }





 for (i = 0; i < znode->child_cnt - 1; i++) {
  const union ubifs_key *key1, *key2;

  key1 = &znode->zbranch[i].key;
  key2 = &znode->zbranch[i + 1].key;

  cmp = keys_cmp(c, key1, key2);
  if (cmp > 0) {
   dbg_err("bad key order (keys %d and %d)", i, i + 1);
   err = 6;
   goto out_dump;
  } else if (cmp == 0 && !is_hash_key(c, key1)) {

   dbg_err("keys %d and %d are not hashed but equivalent",
    i, i + 1);
   err = 7;
   goto out_dump;
  }
 }

 kfree(idx);
 return 0;

out_dump:
 ubifs_err("bad indexing node at LEB %d:%d, error %d", lnum, offs, err);
 dbg_dump_node(c, idx);
 kfree(idx);
 return -EINVAL;
}
