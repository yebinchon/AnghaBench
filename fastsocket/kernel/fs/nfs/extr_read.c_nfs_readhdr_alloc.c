
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_pgio_header {int refcnt; int lock; int rpc_list; int pages; } ;
struct nfs_read_header {struct nfs_pgio_header header; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int ) ;
 struct nfs_read_header* kmem_cache_zalloc (int ,int ) ;
 int nfs_rdata_cachep ;
 int spin_lock_init (int *) ;

struct nfs_read_header *nfs_readhdr_alloc(void)
{
 struct nfs_read_header *rhdr;

 rhdr = kmem_cache_zalloc(nfs_rdata_cachep, GFP_KERNEL);
 if (rhdr) {
  struct nfs_pgio_header *hdr = &rhdr->header;

  INIT_LIST_HEAD(&hdr->pages);
  INIT_LIST_HEAD(&hdr->rpc_list);
  spin_lock_init(&hdr->lock);
  atomic_set(&hdr->refcnt, 0);
 }
 return rhdr;
}
