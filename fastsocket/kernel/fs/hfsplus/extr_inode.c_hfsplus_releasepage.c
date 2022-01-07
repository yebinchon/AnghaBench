
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct super_block {int dummy; } ;
struct page {int index; TYPE_1__* mapping; } ;
struct inode {int i_ino; struct super_block* i_sb; } ;
struct hfs_btree {scalar_t__ node_size; int node_size_shift; int node_count; int hash_lock; } ;
struct hfs_bnode {int refcnt; } ;
typedef int gfp_t ;
struct TYPE_4__ {struct hfs_btree* attr_tree; struct hfs_btree* cat_tree; struct hfs_btree* ext_tree; } ;
struct TYPE_3__ {struct inode* host; } ;


 int BUG () ;



 TYPE_2__ HFSPLUS_SB (struct super_block*) ;
 int PAGE_CACHE_SHIFT ;
 scalar_t__ PAGE_CACHE_SIZE ;
 scalar_t__ atomic_read (int *) ;
 struct hfs_bnode* hfs_bnode_findhash (struct hfs_btree*,int) ;
 int hfs_bnode_free (struct hfs_bnode*) ;
 int hfs_bnode_unhash (struct hfs_bnode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int try_to_free_buffers (struct page*) ;

__attribute__((used)) static int hfsplus_releasepage(struct page *page, gfp_t mask)
{
 struct inode *inode = page->mapping->host;
 struct super_block *sb = inode->i_sb;
 struct hfs_btree *tree;
 struct hfs_bnode *node;
 u32 nidx;
 int i, res = 1;

 switch (inode->i_ino) {
 case 128:
  tree = HFSPLUS_SB(sb).ext_tree;
  break;
 case 129:
  tree = HFSPLUS_SB(sb).cat_tree;
  break;
 case 130:
  tree = HFSPLUS_SB(sb).attr_tree;
  break;
 default:
  BUG();
  return 0;
 }
 if (!tree)
  return 0;
 if (tree->node_size >= PAGE_CACHE_SIZE) {
  nidx = page->index >> (tree->node_size_shift - PAGE_CACHE_SHIFT);
  spin_lock(&tree->hash_lock);
  node = hfs_bnode_findhash(tree, nidx);
  if (!node)
   ;
  else if (atomic_read(&node->refcnt))
   res = 0;
  if (res && node) {
   hfs_bnode_unhash(node);
   hfs_bnode_free(node);
  }
  spin_unlock(&tree->hash_lock);
 } else {
  nidx = page->index << (PAGE_CACHE_SHIFT - tree->node_size_shift);
  i = 1 << (PAGE_CACHE_SHIFT - tree->node_size_shift);
  spin_lock(&tree->hash_lock);
  do {
   node = hfs_bnode_findhash(tree, nidx++);
   if (!node)
    continue;
   if (atomic_read(&node->refcnt)) {
    res = 0;
    break;
   }
   hfs_bnode_unhash(node);
   hfs_bnode_free(node);
  } while (--i && nidx < tree->node_count);
  spin_unlock(&tree->hash_lock);
 }
 return res ? try_to_free_buffers(page) : 0;
}
