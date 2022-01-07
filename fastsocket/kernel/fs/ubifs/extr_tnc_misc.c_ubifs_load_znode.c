
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_znode {int iip; int time; struct ubifs_znode* parent; } ;
struct ubifs_zbranch {struct ubifs_znode* znode; int len; int offs; int lnum; } ;
struct ubifs_info {int clean_zn_cnt; int max_znode_sz; } ;


 int ENOMEM ;
 struct ubifs_znode* ERR_PTR (int) ;
 int GFP_NOFS ;
 int atomic_long_inc (int *) ;
 int get_seconds () ;
 int kfree (struct ubifs_znode*) ;
 struct ubifs_znode* kzalloc (int ,int ) ;
 int read_znode (struct ubifs_info*,int ,int ,int ,struct ubifs_znode*) ;
 int ubifs_assert (int) ;
 int ubifs_clean_zn_cnt ;

struct ubifs_znode *ubifs_load_znode(struct ubifs_info *c,
         struct ubifs_zbranch *zbr,
         struct ubifs_znode *parent, int iip)
{
 int err;
 struct ubifs_znode *znode;

 ubifs_assert(!zbr->znode);




 znode = kzalloc(c->max_znode_sz, GFP_NOFS);
 if (!znode)
  return ERR_PTR(-ENOMEM);

 err = read_znode(c, zbr->lnum, zbr->offs, zbr->len, znode);
 if (err)
  goto out;

 atomic_long_inc(&c->clean_zn_cnt);







 atomic_long_inc(&ubifs_clean_zn_cnt);

 zbr->znode = znode;
 znode->parent = parent;
 znode->time = get_seconds();
 znode->iip = iip;

 return znode;

out:
 kfree(znode);
 return ERR_PTR(err);
}
