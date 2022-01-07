
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_pgio_header {int * verf; int refcnt; int lock; int rpc_list; int pages; } ;
struct nfs_write_header {int verf; struct nfs_pgio_header header; } ;


 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int ) ;
 struct nfs_write_header* mempool_alloc (int ,int ) ;
 int memset (struct nfs_write_header*,int ,int) ;
 int nfs_wdata_mempool ;
 int spin_lock_init (int *) ;

struct nfs_write_header *nfs_writehdr_alloc(void)
{
 struct nfs_write_header *p = mempool_alloc(nfs_wdata_mempool, GFP_NOFS);

 if (p) {
  struct nfs_pgio_header *hdr = &p->header;

  memset(p, 0, sizeof(*p));
  INIT_LIST_HEAD(&hdr->pages);
  INIT_LIST_HEAD(&hdr->rpc_list);
  spin_lock_init(&hdr->lock);
  atomic_set(&hdr->refcnt, 0);
  hdr->verf = &p->verf;
 }
 return p;
}
