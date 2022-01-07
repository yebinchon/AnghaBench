
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct nfs_pageio_descriptor {int pg_lseg; } ;
struct nfs_page {int dummy; } ;
struct TYPE_2__ {int stripe_unit; } ;


 TYPE_1__* FILELAYOUT_LSEG (int ) ;
 int do_div (scalar_t__,int ) ;
 int nfs_generic_pg_test (struct nfs_pageio_descriptor*,struct nfs_page*,struct nfs_page*) ;
 int pnfs_generic_pg_test (struct nfs_pageio_descriptor*,struct nfs_page*,struct nfs_page*) ;
 scalar_t__ req_offset (struct nfs_page*) ;

__attribute__((used)) static bool
filelayout_pg_test(struct nfs_pageio_descriptor *pgio, struct nfs_page *prev,
     struct nfs_page *req)
{
 u64 p_stripe, r_stripe;
 u32 stripe_unit;

 if (!pnfs_generic_pg_test(pgio, prev, req) ||
     !nfs_generic_pg_test(pgio, prev, req))
  return 0;

 p_stripe = (u64)req_offset(prev);
 r_stripe = (u64)req_offset(req);
 stripe_unit = FILELAYOUT_LSEG(pgio->pg_lseg)->stripe_unit;

 do_div(p_stripe, stripe_unit);
 do_div(r_stripe, stripe_unit);

 return (p_stripe == r_stripe);
}
