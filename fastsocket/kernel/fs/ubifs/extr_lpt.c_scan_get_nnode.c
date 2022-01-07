
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_nnode {int iip; struct ubifs_nnode* parent; scalar_t__ level; void* num; struct ubifs_nbranch* nbranch; } ;
struct ubifs_nbranch {scalar_t__ lnum; int offs; struct ubifs_nnode* nnode; } ;
struct ubifs_info {scalar_t__ big_lpt; int nnode_sz; int ubi; void* lpt_nod_buf; } ;
struct TYPE_2__ {struct ubifs_nnode* nnode; } ;
struct lpt_scan_node {int in_tree; TYPE_1__ ptr; struct ubifs_nnode nnode; } ;


 struct ubifs_nnode* ERR_PTR (int) ;
 void* calc_nnode_num_from_parent (struct ubifs_info*,struct ubifs_nnode*,int) ;
 int memset (struct ubifs_nnode*,int ,int) ;
 int ubi_read (int ,scalar_t__,void*,int ,int ) ;
 int ubifs_unpack_nnode (struct ubifs_info*,void*,struct ubifs_nnode*) ;
 int validate_nnode (struct ubifs_info*,struct ubifs_nnode*,struct ubifs_nnode*,int) ;

__attribute__((used)) static struct ubifs_nnode *scan_get_nnode(struct ubifs_info *c,
       struct lpt_scan_node *path,
       struct ubifs_nnode *parent, int iip)
{
 struct ubifs_nbranch *branch;
 struct ubifs_nnode *nnode;
 void *buf = c->lpt_nod_buf;
 int err;

 branch = &parent->nbranch[iip];
 nnode = branch->nnode;
 if (nnode) {
  path->in_tree = 1;
  path->ptr.nnode = nnode;
  return nnode;
 }
 nnode = &path->nnode;
 path->in_tree = 0;
 path->ptr.nnode = nnode;
 memset(nnode, 0, sizeof(struct ubifs_nnode));
 if (branch->lnum == 0) {






  if (c->big_lpt)
   nnode->num = calc_nnode_num_from_parent(c, parent, iip);
 } else {
  err = ubi_read(c->ubi, branch->lnum, buf, branch->offs,
          c->nnode_sz);
  if (err)
   return ERR_PTR(err);
  err = ubifs_unpack_nnode(c, buf, nnode);
  if (err)
   return ERR_PTR(err);
 }
 err = validate_nnode(c, nnode, parent, iip);
 if (err)
  return ERR_PTR(err);
 if (!c->big_lpt)
  nnode->num = calc_nnode_num_from_parent(c, parent, iip);
 nnode->level = parent->level - 1;
 nnode->parent = parent;
 nnode->iip = iip;
 return nnode;
}
