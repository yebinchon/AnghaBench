
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct nfs_pageio_descriptor {int dummy; } ;
struct nfs_page {int dummy; } ;
struct nfs_open_context {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int (* read_pageio_init ) (struct nfs_pageio_descriptor*,struct inode*,int *) ;} ;


 scalar_t__ IS_ERR (struct nfs_page*) ;
 TYPE_1__* NFS_PROTO (struct inode*) ;
 unsigned int PAGE_CACHE_SIZE ;
 int PTR_ERR (struct nfs_page*) ;
 int nfs_async_read_completion_ops ;
 struct nfs_page* nfs_create_request (struct nfs_open_context*,struct inode*,struct page*,int ,unsigned int) ;
 unsigned int nfs_page_length (struct page*) ;
 int nfs_pageio_add_request (struct nfs_pageio_descriptor*,struct nfs_page*) ;
 int nfs_pageio_complete (struct nfs_pageio_descriptor*) ;
 int nfs_return_empty_page (struct page*) ;
 int stub1 (struct nfs_pageio_descriptor*,struct inode*,int *) ;
 int unlock_page (struct page*) ;
 int zero_user_segment (struct page*,unsigned int,unsigned int) ;

int nfs_readpage_async(struct nfs_open_context *ctx, struct inode *inode,
         struct page *page)
{
 struct nfs_page *new;
 unsigned int len;
 struct nfs_pageio_descriptor pgio;

 len = nfs_page_length(page);
 if (len == 0)
  return nfs_return_empty_page(page);
 new = nfs_create_request(ctx, inode, page, 0, len);
 if (IS_ERR(new)) {
  unlock_page(page);
  return PTR_ERR(new);
 }
 if (len < PAGE_CACHE_SIZE)
  zero_user_segment(page, len, PAGE_CACHE_SIZE);

 NFS_PROTO(inode)->read_pageio_init(&pgio, inode, &nfs_async_read_completion_ops);
 nfs_pageio_add_request(&pgio, new);
 nfs_pageio_complete(&pgio);
 return 0;
}
