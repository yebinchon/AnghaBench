
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfs_pgio_header {TYPE_1__* completion_ops; int refcnt; int rpc_list; } ;
struct nfs_read_header {struct nfs_pgio_header header; } ;
struct nfs_pageio_descriptor {int pg_rpc_callops; int pg_list; TYPE_2__* pg_completion_ops; } ;
struct TYPE_4__ {int (* error_cleanup ) (int *) ;} ;
struct TYPE_3__ {int (* completion ) (struct nfs_pgio_header*) ;} ;


 int ENOMEM ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 int nfs_do_multiple_reads (int *,int ) ;
 int nfs_generic_pagein (struct nfs_pageio_descriptor*,struct nfs_pgio_header*) ;
 int nfs_pgheader_init (struct nfs_pageio_descriptor*,struct nfs_pgio_header*,int ) ;
 struct nfs_read_header* nfs_readhdr_alloc () ;
 int nfs_readhdr_free ;
 int stub1 (int *) ;
 int stub2 (struct nfs_pgio_header*) ;

__attribute__((used)) static int nfs_generic_pg_readpages(struct nfs_pageio_descriptor *desc)
{
 struct nfs_read_header *rhdr;
 struct nfs_pgio_header *hdr;
 int ret;

 rhdr = nfs_readhdr_alloc();
 if (!rhdr) {
  desc->pg_completion_ops->error_cleanup(&desc->pg_list);
  return -ENOMEM;
 }
 hdr = &rhdr->header;
 nfs_pgheader_init(desc, hdr, nfs_readhdr_free);
 atomic_inc(&hdr->refcnt);
 ret = nfs_generic_pagein(desc, hdr);
 if (ret == 0)
  ret = nfs_do_multiple_reads(&hdr->rpc_list,
         desc->pg_rpc_callops);
 if (atomic_dec_and_test(&hdr->refcnt))
  hdr->completion_ops->completion(hdr);
 return ret;
}
