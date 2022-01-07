
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int flags; int index; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int fscache; } ;


 int FSCACHE ;
 int GFP_KERNEL ;
 int NFSIOS_FSCACHE_PAGES_UNCACHED ;
 int NFSIOS_FSCACHE_PAGES_WRITTEN_FAIL ;
 int NFSIOS_FSCACHE_PAGES_WRITTEN_OK ;
 TYPE_1__* NFS_I (struct inode*) ;
 int dfprintk (int ,char*,struct page*,struct page*,int ,int,...) ;
 int fscache_uncache_page (int ,struct page*) ;
 int fscache_write_page (int ,struct page*,int ) ;
 int nfs_add_fscache_stats (struct inode*,int ,int) ;

void __nfs_readpage_to_fscache(struct inode *inode, struct page *page, int sync)
{
 int ret;

 dfprintk(FSCACHE,
   "NFS: readpage_to_fscache(fsc:%p/p:%p(i:%lx f:%lx)/%d)\n",
   NFS_I(inode)->fscache, page, page->index, page->flags, sync);

 ret = fscache_write_page(NFS_I(inode)->fscache, page, GFP_KERNEL);
 dfprintk(FSCACHE,
   "NFS:     readpage_to_fscache: p:%p(i:%lu f:%lx) ret %d\n",
   page, page->index, page->flags, ret);

 if (ret != 0) {
  fscache_uncache_page(NFS_I(inode)->fscache, page);
  nfs_add_fscache_stats(inode,
          NFSIOS_FSCACHE_PAGES_WRITTEN_FAIL, 1);
  nfs_add_fscache_stats(inode, NFSIOS_FSCACHE_PAGES_UNCACHED, 1);
 } else {
  nfs_add_fscache_stats(inode,
          NFSIOS_FSCACHE_PAGES_WRITTEN_OK, 1);
 }
}
