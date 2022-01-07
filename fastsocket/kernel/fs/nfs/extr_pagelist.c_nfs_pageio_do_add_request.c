
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int prev; } ;
struct nfs_pageio_descriptor {scalar_t__ pg_count; TYPE_2__ pg_list; int pg_base; TYPE_1__* pg_ops; } ;
struct nfs_page {scalar_t__ wb_bytes; int wb_pgbase; } ;
struct TYPE_3__ {int (* pg_init ) (struct nfs_pageio_descriptor*,struct nfs_page*) ;} ;


 int nfs_can_coalesce_requests (struct nfs_page*,struct nfs_page*,struct nfs_pageio_descriptor*) ;
 int nfs_list_add_request (struct nfs_page*,TYPE_2__*) ;
 struct nfs_page* nfs_list_entry (int ) ;
 int nfs_list_remove_request (struct nfs_page*) ;
 int stub1 (struct nfs_pageio_descriptor*,struct nfs_page*) ;

__attribute__((used)) static int nfs_pageio_do_add_request(struct nfs_pageio_descriptor *desc,
         struct nfs_page *req)
{
 if (desc->pg_count != 0) {
  struct nfs_page *prev;

  prev = nfs_list_entry(desc->pg_list.prev);
  if (!nfs_can_coalesce_requests(prev, req, desc))
   return 0;
 } else {
  if (desc->pg_ops->pg_init)
   desc->pg_ops->pg_init(desc, req);
  desc->pg_base = req->wb_pgbase;
 }
 nfs_list_remove_request(req);
 nfs_list_add_request(req, &desc->pg_list);
 desc->pg_count += req->wb_bytes;
 return 1;
}
