
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_nnode {int iip; struct ubifs_nnode* parent; scalar_t__ level; void* num; struct ubifs_nbranch* nbranch; } ;
struct ubifs_nbranch {int lnum; int offs; struct ubifs_nnode* nnode; } ;
struct ubifs_info {int lpt_lnum; int lpt_offs; scalar_t__ lpt_hght; struct ubifs_nnode* nroot; scalar_t__ big_lpt; int nnode_sz; int ubi; void* lpt_nod_buf; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 void* calc_nnode_num_from_parent (struct ubifs_info*,struct ubifs_nnode*,int) ;
 int kfree (struct ubifs_nnode*) ;
 struct ubifs_nnode* kzalloc (int,int ) ;
 int ubi_read (int ,int,void*,int,int ) ;
 int ubifs_err (char*,int,int,int) ;
 int ubifs_unpack_nnode (struct ubifs_info*,void*,struct ubifs_nnode*) ;
 int validate_nnode (struct ubifs_info*,struct ubifs_nnode*,struct ubifs_nnode*,int) ;

int ubifs_read_nnode(struct ubifs_info *c, struct ubifs_nnode *parent, int iip)
{
 struct ubifs_nbranch *branch = ((void*)0);
 struct ubifs_nnode *nnode = ((void*)0);
 void *buf = c->lpt_nod_buf;
 int err, lnum, offs;

 if (parent) {
  branch = &parent->nbranch[iip];
  lnum = branch->lnum;
  offs = branch->offs;
 } else {
  lnum = c->lpt_lnum;
  offs = c->lpt_offs;
 }
 nnode = kzalloc(sizeof(struct ubifs_nnode), GFP_NOFS);
 if (!nnode) {
  err = -ENOMEM;
  goto out;
 }
 if (lnum == 0) {






  if (c->big_lpt)
   nnode->num = calc_nnode_num_from_parent(c, parent, iip);
 } else {
  err = ubi_read(c->ubi, lnum, buf, offs, c->nnode_sz);
  if (err)
   goto out;
  err = ubifs_unpack_nnode(c, buf, nnode);
  if (err)
   goto out;
 }
 err = validate_nnode(c, nnode, parent, iip);
 if (err)
  goto out;
 if (!c->big_lpt)
  nnode->num = calc_nnode_num_from_parent(c, parent, iip);
 if (parent) {
  branch->nnode = nnode;
  nnode->level = parent->level - 1;
 } else {
  c->nroot = nnode;
  nnode->level = c->lpt_hght;
 }
 nnode->parent = parent;
 nnode->iip = iip;
 return 0;

out:
 ubifs_err("error %d reading nnode at %d:%d", err, lnum, offs);
 kfree(nnode);
 return err;
}
