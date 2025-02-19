
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct kmem_cache {unsigned long buffer_size; } ;


 int BYTES_PER_WORD ;
 unsigned long PAGE_OFFSET ;
 int PageSlab (struct page*) ;
 scalar_t__ high_memory ;
 int kern_addr_valid (unsigned long) ;
 struct kmem_cache* page_get_cache (struct page*) ;
 scalar_t__ unlikely (int) ;
 struct page* virt_to_page (void const*) ;

int kmem_ptr_validate(struct kmem_cache *cachep, const void *ptr)
{
 unsigned long addr = (unsigned long)ptr;
 unsigned long min_addr = PAGE_OFFSET;
 unsigned long align_mask = BYTES_PER_WORD - 1;
 unsigned long size = cachep->buffer_size;
 struct page *page;

 if (unlikely(addr < min_addr))
  goto out;
 if (unlikely(addr > (unsigned long)high_memory - size))
  goto out;
 if (unlikely(addr & align_mask))
  goto out;
 if (unlikely(!kern_addr_valid(addr)))
  goto out;
 if (unlikely(!kern_addr_valid(addr + size - 1)))
  goto out;
 page = virt_to_page(ptr);
 if (unlikely(!PageSlab(page)))
  goto out;
 if (unlikely(page_get_cache(page) != cachep))
  goto out;
 return 1;
out:
 return 0;
}
