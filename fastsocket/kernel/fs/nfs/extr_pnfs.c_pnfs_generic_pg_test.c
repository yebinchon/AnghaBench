
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfs_pageio_descriptor {TYPE_2__* pg_lseg; } ;
struct nfs_page {int dummy; } ;
struct TYPE_3__ {int length; int offset; } ;
struct TYPE_4__ {TYPE_1__ pls_range; } ;


 scalar_t__ end_offset (int ,int ) ;
 int nfs_generic_pg_test (struct nfs_pageio_descriptor*,struct nfs_page*,struct nfs_page*) ;
 scalar_t__ req_offset (struct nfs_page*) ;

bool
pnfs_generic_pg_test(struct nfs_pageio_descriptor *pgio, struct nfs_page *prev,
       struct nfs_page *req)
{
 if (pgio->pg_lseg == ((void*)0))
  return nfs_generic_pg_test(pgio, prev, req);
 return req_offset(req) < end_offset(pgio->pg_lseg->pls_range.offset,
      pgio->pg_lseg->pls_range.length);
}
