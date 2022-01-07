
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {struct address_space* mapping; } ;
struct address_space {int host; } ;
typedef int gfp_t ;
struct TYPE_2__ {int flags; } ;


 int FLUSH_SYNC ;
 int GFP_KERNEL ;
 int PAGECACHE ;
 int PF_FSTRANS ;
 scalar_t__ PagePrivate (struct page*) ;
 TYPE_1__* current ;
 scalar_t__ current_is_kswapd () ;
 int dfprintk (int ,char*,struct page*) ;
 int nfs_commit_inode (int ,int) ;
 int nfs_fscache_release_page (struct page*,int) ;

__attribute__((used)) static int nfs_release_page(struct page *page, gfp_t gfp)
{
 struct address_space *mapping = page->mapping;

 dfprintk(PAGECACHE, "NFS: release_page(%p)\n", page);




 if (mapping && (gfp & GFP_KERNEL) == GFP_KERNEL &&
     !(current->flags & PF_FSTRANS)) {
  int how = FLUSH_SYNC;


  if (current_is_kswapd())
   how = 0;
  nfs_commit_inode(mapping->host, how);
 }

 if (PagePrivate(page))
  return 0;
 return nfs_fscache_release_page(page, gfp);
}
