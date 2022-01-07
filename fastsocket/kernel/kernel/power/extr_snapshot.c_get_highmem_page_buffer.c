
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct chain_allocator {int dummy; } ;


 int EINVAL ;
 void* ERR_PTR (int ) ;

__attribute__((used)) static inline void *
get_highmem_page_buffer(struct page *page, struct chain_allocator *ca)
{
 return ERR_PTR(-EINVAL);
}
