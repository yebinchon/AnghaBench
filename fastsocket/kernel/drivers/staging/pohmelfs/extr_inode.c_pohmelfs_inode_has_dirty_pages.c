
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct address_space {int page_tree; } ;
typedef int pgoff_t ;


 int PAGECACHE_TAG_DIRTY ;
 int radix_tree_gang_lookup_tag (int *,void**,int ,int,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int pohmelfs_inode_has_dirty_pages(struct address_space *mapping, pgoff_t index)
{
 int ret;
 struct page *page;

 rcu_read_lock();
 ret = radix_tree_gang_lookup_tag(&mapping->page_tree,
    (void **)&page, index, 1, PAGECACHE_TAG_DIRTY);
 rcu_read_unlock();
 return ret;
}
