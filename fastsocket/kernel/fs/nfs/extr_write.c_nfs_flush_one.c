
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_2__ {struct page** pagevec; } ;
struct nfs_write_data {int list; TYPE_1__ pages; } ;
struct nfs_pgio_header {int rpc_list; int pages; } ;
struct list_head {int next; } ;
struct nfs_pageio_descriptor {int pg_ioflags; int * pg_rpc_callops; int pg_count; scalar_t__ pg_moreio; int pg_dreq; int pg_inode; int pg_base; struct list_head pg_list; } ;
struct nfs_page {int wb_page; } ;
struct nfs_commit_info {int dummy; } ;


 int ENOMEM ;
 int FLUSH_COND_STABLE ;
 int list_add (int *,int *) ;
 int list_empty (struct list_head*) ;
 int nfs_flush_error (struct nfs_pageio_descriptor*,struct nfs_pgio_header*) ;
 int nfs_init_cinfo (struct nfs_commit_info*,int ,int ) ;
 int nfs_list_add_request (struct nfs_page*,int *) ;
 struct nfs_page* nfs_list_entry (int ) ;
 int nfs_list_remove_request (struct nfs_page*) ;
 int nfs_page_array_len (int ,int ) ;
 scalar_t__ nfs_reqs_to_commit (struct nfs_commit_info*) ;
 int nfs_write_common_ops ;
 int nfs_write_rpcsetup (struct nfs_write_data*,int ,int ,int,struct nfs_commit_info*) ;
 struct nfs_write_data* nfs_writedata_alloc (struct nfs_pgio_header*,int ) ;

__attribute__((used)) static int nfs_flush_one(struct nfs_pageio_descriptor *desc,
    struct nfs_pgio_header *hdr)
{
 struct nfs_page *req;
 struct page **pages;
 struct nfs_write_data *data;
 struct list_head *head = &desc->pg_list;
 struct nfs_commit_info cinfo;

 data = nfs_writedata_alloc(hdr, nfs_page_array_len(desc->pg_base,
          desc->pg_count));
 if (!data) {
  nfs_flush_error(desc, hdr);
  return -ENOMEM;
 }

 nfs_init_cinfo(&cinfo, desc->pg_inode, desc->pg_dreq);
 pages = data->pages.pagevec;
 while (!list_empty(head)) {
  req = nfs_list_entry(head->next);
  nfs_list_remove_request(req);
  nfs_list_add_request(req, &hdr->pages);
  *pages++ = req->wb_page;
 }

 if ((desc->pg_ioflags & FLUSH_COND_STABLE) &&
     (desc->pg_moreio || nfs_reqs_to_commit(&cinfo)))
  desc->pg_ioflags &= ~FLUSH_COND_STABLE;


 nfs_write_rpcsetup(data, desc->pg_count, 0, desc->pg_ioflags, &cinfo);
 list_add(&data->list, &hdr->rpc_list);
 desc->pg_rpc_callops = &nfs_write_common_ops;
 return 0;
}
