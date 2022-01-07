
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct super_block {int dummy; } ;
struct page {int index; } ;
struct inode {struct super_block* i_sb; } ;
typedef int loff_t ;
typedef int handle_t ;


 int BUG_ON (int) ;
 int OCFS2_SB (struct super_block*) ;
 int PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;
 int ocfs2_map_and_dirty_page (struct inode*,int *,unsigned int,unsigned int,struct page*,int,int *) ;
 int ocfs2_sparse_alloc (int ) ;
 int ocfs2_unlock_and_free_pages (struct page**,int) ;

__attribute__((used)) static void ocfs2_zero_cluster_pages(struct inode *inode, loff_t start,
         loff_t end, struct page **pages,
         int numpages, u64 phys, handle_t *handle)
{
 int i;
 struct page *page;
 unsigned int from, to = PAGE_CACHE_SIZE;
 struct super_block *sb = inode->i_sb;

 BUG_ON(!ocfs2_sparse_alloc(OCFS2_SB(sb)));

 if (numpages == 0)
  goto out;

 to = PAGE_CACHE_SIZE;
 for(i = 0; i < numpages; i++) {
  page = pages[i];

  from = start & (PAGE_CACHE_SIZE - 1);
  if ((end >> PAGE_CACHE_SHIFT) == page->index)
   to = end & (PAGE_CACHE_SIZE - 1);

  BUG_ON(from > PAGE_CACHE_SIZE);
  BUG_ON(to > PAGE_CACHE_SIZE);

  ocfs2_map_and_dirty_page(inode, handle, from, to, page, 1,
      &phys);

  start = (page->index + 1) << PAGE_CACHE_SHIFT;
 }
out:
 if (pages)
  ocfs2_unlock_and_free_pages(pages, numpages);
}
