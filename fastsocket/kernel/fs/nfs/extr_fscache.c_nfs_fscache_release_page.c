
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
struct nfs_inode {struct fscache_cookie* fscache; } ;
struct fscache_cookie {int dummy; } ;
typedef int gfp_t ;
struct TYPE_2__ {int host; } ;


 int BUG_ON (int) ;
 int FSCACHE ;
 int NFSIOS_FSCACHE_PAGES_UNCACHED ;
 struct nfs_inode* NFS_I (int ) ;
 scalar_t__ PageFsCache (struct page*) ;
 int dfprintk (int ,char*,struct fscache_cookie*,struct page*,struct nfs_inode*) ;
 int fscache_maybe_release_page (struct fscache_cookie*,struct page*,int ) ;
 int nfs_add_fscache_stats (int ,int ,int) ;

int nfs_fscache_release_page(struct page *page, gfp_t gfp)
{
 if (PageFsCache(page)) {
  struct nfs_inode *nfsi = NFS_I(page->mapping->host);
  struct fscache_cookie *cookie = nfsi->fscache;

  BUG_ON(!cookie);
  dfprintk(FSCACHE, "NFS: fscache releasepage (0x%p/0x%p/0x%p)\n",
    cookie, page, nfsi);

  if (!fscache_maybe_release_page(cookie, page, gfp))
   return 0;

  nfs_add_fscache_stats(page->mapping->host,
          NFSIOS_FSCACHE_PAGES_UNCACHED, 1);
 }

 return 1;
}
