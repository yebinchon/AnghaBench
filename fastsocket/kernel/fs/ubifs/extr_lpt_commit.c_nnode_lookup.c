
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_nnode {int dummy; } ;
struct ubifs_info {struct ubifs_nnode* nroot; } ;


 struct ubifs_nnode* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct ubifs_nnode*) ;
 int UBIFS_LPT_FANOUT ;
 int UBIFS_LPT_FANOUT_SHIFT ;
 struct ubifs_nnode* ubifs_get_nnode (struct ubifs_info*,struct ubifs_nnode*,int) ;
 int ubifs_read_nnode (struct ubifs_info*,int *,int ) ;

__attribute__((used)) static struct ubifs_nnode *nnode_lookup(struct ubifs_info *c, int i)
{
 int err, iip;
 struct ubifs_nnode *nnode;

 if (!c->nroot) {
  err = ubifs_read_nnode(c, ((void*)0), 0);
  if (err)
   return ERR_PTR(err);
 }
 nnode = c->nroot;
 while (1) {
  iip = i & (UBIFS_LPT_FANOUT - 1);
  i >>= UBIFS_LPT_FANOUT_SHIFT;
  if (!i)
   break;
  nnode = ubifs_get_nnode(c, nnode, iip);
  if (IS_ERR(nnode))
   return nnode;
 }
 return nnode;
}
