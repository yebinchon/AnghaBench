
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_pageio_descriptor {int pg_moreio; scalar_t__ pg_error; scalar_t__ pg_recoalesce; } ;
struct nfs_page {int dummy; } ;


 int nfs_pageio_do_add_request (struct nfs_pageio_descriptor*,struct nfs_page*) ;
 int nfs_pageio_doio (struct nfs_pageio_descriptor*) ;

__attribute__((used)) static int __nfs_pageio_add_request(struct nfs_pageio_descriptor *desc,
      struct nfs_page *req)
{
 while (!nfs_pageio_do_add_request(desc, req)) {
  desc->pg_moreio = 1;
  nfs_pageio_doio(desc);
  if (desc->pg_error < 0)
   return 0;
  desc->pg_moreio = 0;
  if (desc->pg_recoalesce)
   return 0;
 }
 return 1;
}
