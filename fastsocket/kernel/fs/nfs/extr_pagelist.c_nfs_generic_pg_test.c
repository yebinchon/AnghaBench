
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_pageio_descriptor {scalar_t__ pg_bsize; scalar_t__ pg_count; } ;
struct nfs_page {scalar_t__ wb_bytes; } ;


 scalar_t__ PAGE_SIZE ;

bool nfs_generic_pg_test(struct nfs_pageio_descriptor *desc, struct nfs_page *prev, struct nfs_page *req)
{







 if (desc->pg_bsize < PAGE_SIZE)
  return 0;

 return desc->pg_count + req->wb_bytes <= desc->pg_bsize;
}
