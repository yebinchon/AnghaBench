
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_pgio_header {int dummy; } ;
struct nfs_pageio_descriptor {scalar_t__ pg_bsize; } ;


 scalar_t__ PAGE_CACHE_SIZE ;
 int nfs_pagein_multi (struct nfs_pageio_descriptor*,struct nfs_pgio_header*) ;
 int nfs_pagein_one (struct nfs_pageio_descriptor*,struct nfs_pgio_header*) ;

int nfs_generic_pagein(struct nfs_pageio_descriptor *desc,
         struct nfs_pgio_header *hdr)
{
 if (desc->pg_bsize < PAGE_CACHE_SIZE)
  return nfs_pagein_multi(desc, hdr);
 return nfs_pagein_one(desc, hdr);
}
