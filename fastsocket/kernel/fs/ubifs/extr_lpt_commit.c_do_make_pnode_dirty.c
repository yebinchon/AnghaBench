
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_pnode {struct ubifs_nnode* parent; int flags; } ;
struct ubifs_nnode {struct ubifs_nnode* parent; int flags; } ;
struct ubifs_info {int dirty_pn_cnt; int dirty_nn_cnt; } ;


 int DIRTY_CNODE ;
 int add_pnode_dirt (struct ubifs_info*,struct ubifs_pnode*) ;
 int test_and_set_bit (int ,int *) ;
 int ubifs_add_nnode_dirt (struct ubifs_info*,struct ubifs_nnode*) ;

__attribute__((used)) static void do_make_pnode_dirty(struct ubifs_info *c, struct ubifs_pnode *pnode)
{

 if (!test_and_set_bit(DIRTY_CNODE, &pnode->flags)) {
  struct ubifs_nnode *nnode;

  c->dirty_pn_cnt += 1;
  add_pnode_dirt(c, pnode);

  nnode = pnode->parent;
  while (nnode) {
   if (!test_and_set_bit(DIRTY_CNODE, &nnode->flags)) {
    c->dirty_nn_cnt += 1;
    ubifs_add_nnode_dirt(c, nnode);
    nnode = nnode->parent;
   } else
    break;
  }
 }
}
