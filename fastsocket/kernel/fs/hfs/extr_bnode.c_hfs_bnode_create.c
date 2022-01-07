
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct page {int dummy; } ;
struct hfs_btree {int pages_per_bnode; scalar_t__ node_size; int hash_lock; } ;
struct hfs_bnode {int lock_wq; int flags; scalar_t__ page_offset; struct page** page; } ;


 int BUG_ON (struct hfs_bnode*) ;
 int EIO ;
 int ENOMEM ;
 struct hfs_bnode* ERR_PTR (int ) ;
 int HFS_BNODE_ERROR ;
 int HFS_BNODE_NEW ;
 scalar_t__ PAGE_CACHE_SIZE ;
 struct hfs_bnode* __hfs_bnode_create (struct hfs_btree*,int ) ;
 int clear_bit (int ,int *) ;
 struct hfs_bnode* hfs_bnode_findhash (struct hfs_btree*,int ) ;
 int hfs_bnode_put (struct hfs_bnode*) ;
 scalar_t__ kmap (struct page*) ;
 int kunmap (struct page*) ;
 int memset (scalar_t__,int ,scalar_t__) ;
 scalar_t__ min (int,int) ;
 int set_page_dirty (struct page*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wake_up (int *) ;

struct hfs_bnode *hfs_bnode_create(struct hfs_btree *tree, u32 num)
{
 struct hfs_bnode *node;
 struct page **pagep;
 int i;

 spin_lock(&tree->hash_lock);
 node = hfs_bnode_findhash(tree, num);
 spin_unlock(&tree->hash_lock);
 BUG_ON(node);
 node = __hfs_bnode_create(tree, num);
 if (!node)
  return ERR_PTR(-ENOMEM);
 if (test_bit(HFS_BNODE_ERROR, &node->flags)) {
  hfs_bnode_put(node);
  return ERR_PTR(-EIO);
 }

 pagep = node->page;
 memset(kmap(*pagep) + node->page_offset, 0,
        min((int)PAGE_CACHE_SIZE, (int)tree->node_size));
 set_page_dirty(*pagep);
 kunmap(*pagep);
 for (i = 1; i < tree->pages_per_bnode; i++) {
  memset(kmap(*++pagep), 0, PAGE_CACHE_SIZE);
  set_page_dirty(*pagep);
  kunmap(*pagep);
 }
 clear_bit(HFS_BNODE_NEW, &node->flags);
 wake_up(&node->lock_wq);

 return node;
}
