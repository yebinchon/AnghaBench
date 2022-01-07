
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfs_btree {int pages_per_bnode; int hash_lock; int cnid; } ;
struct hfs_bnode {int flags; int * page; int refcnt; int this; struct hfs_btree* tree; } ;


 int BUG_ON (int) ;
 int DBG_BNODE_REFS ;
 int HFS_BNODE_DELETED ;
 int atomic_dec_and_lock (int *,int *) ;
 int atomic_read (int *) ;
 int dprint (int ,char*,int ,int ,int ) ;
 int hfs_bmap_free (struct hfs_bnode*) ;
 int hfs_bnode_free (struct hfs_bnode*) ;
 int hfs_bnode_unhash (struct hfs_bnode*) ;
 int mark_page_accessed (int ) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

void hfs_bnode_put(struct hfs_bnode *node)
{
 if (node) {
  struct hfs_btree *tree = node->tree;
  int i;

  dprint(DBG_BNODE_REFS, "put_node(%d:%d): %d\n",
         node->tree->cnid, node->this, atomic_read(&node->refcnt));
  BUG_ON(!atomic_read(&node->refcnt));
  if (!atomic_dec_and_lock(&node->refcnt, &tree->hash_lock))
   return;
  for (i = 0; i < tree->pages_per_bnode; i++) {
   if (!node->page[i])
    continue;
   mark_page_accessed(node->page[i]);
  }

  if (test_bit(HFS_BNODE_DELETED, &node->flags)) {
   hfs_bnode_unhash(node);
   spin_unlock(&tree->hash_lock);
   hfs_bmap_free(node);
   hfs_bnode_free(node);
   return;
  }
  spin_unlock(&tree->hash_lock);
 }
}
