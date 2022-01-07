
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {struct ubifs_cnode* lpt_cnext; } ;
struct ubifs_cnode {struct ubifs_cnode* cnext; int flags; } ;


 int OBSOLETE_CNODE ;
 int kfree (struct ubifs_cnode*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void free_obsolete_cnodes(struct ubifs_info *c)
{
 struct ubifs_cnode *cnode, *cnext;

 cnext = c->lpt_cnext;
 if (!cnext)
  return;
 do {
  cnode = cnext;
  cnext = cnode->cnext;
  if (test_bit(OBSOLETE_CNODE, &cnode->flags))
   kfree(cnode);
  else
   cnode->cnext = ((void*)0);
 } while (cnext != c->lpt_cnext);
 c->lpt_cnext = ((void*)0);
}
