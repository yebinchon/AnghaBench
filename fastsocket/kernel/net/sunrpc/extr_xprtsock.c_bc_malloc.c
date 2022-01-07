
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int dummy; } ;
struct rpc_buffer {int len; void* data; } ;
struct page {int dummy; } ;


 int BUG_ON (int) ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 struct page* alloc_page (int ) ;
 struct rpc_buffer* page_address (struct page*) ;

void *bc_malloc(struct rpc_task *task, size_t size)
{
 struct page *page;
 struct rpc_buffer *buf;

 BUG_ON(size > PAGE_SIZE - sizeof(struct rpc_buffer));
 page = alloc_page(GFP_KERNEL);

 if (!page)
  return ((void*)0);

 buf = page_address(page);
 buf->len = PAGE_SIZE;

 return buf->data;
}
