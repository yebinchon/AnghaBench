
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pagevec {int nr; TYPE_2__** pages; } ;
struct TYPE_3__ {int i_mapping; } ;
struct nfs_inode {TYPE_1__ vfs_inode; } ;
typedef scalar_t__ pgoff_t ;
struct TYPE_4__ {scalar_t__ index; } ;


 int ClearPageFsCache (TYPE_2__*) ;
 scalar_t__ PAGEVEC_SIZE ;
 int cond_resched () ;
 int dprintk (char*,struct nfs_inode*) ;
 scalar_t__ pagevec_count (struct pagevec*) ;
 int pagevec_init (struct pagevec*,int ) ;
 int pagevec_lookup (struct pagevec*,int ,scalar_t__,scalar_t__) ;
 int pagevec_release (struct pagevec*) ;

__attribute__((used)) static void nfs_fscache_inode_now_uncached(void *cookie_netfs_data)
{
 struct nfs_inode *nfsi = cookie_netfs_data;
 struct pagevec pvec;
 pgoff_t first;
 int loop, nr_pages;

 pagevec_init(&pvec, 0);
 first = 0;

 dprintk("NFS: nfs_inode_now_uncached: nfs_inode 0x%p\n", nfsi);

 for (;;) {

  nr_pages = pagevec_lookup(&pvec,
       nfsi->vfs_inode.i_mapping,
       first,
       PAGEVEC_SIZE - pagevec_count(&pvec));
  if (!nr_pages)
   break;

  for (loop = 0; loop < nr_pages; loop++)
   ClearPageFsCache(pvec.pages[loop]);

  first = pvec.pages[nr_pages - 1]->index + 1;

  pvec.nr = nr_pages;
  pagevec_release(&pvec);
  cond_resched();
 }
}
