
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int pgprot_t ;


 int flush_cache_vmap (unsigned long,unsigned long) ;
 int vmap_page_range_noflush (unsigned long,unsigned long,int ,struct page**) ;

__attribute__((used)) static int vmap_page_range(unsigned long start, unsigned long end,
      pgprot_t prot, struct page **pages)
{
 int ret;

 ret = vmap_page_range_noflush(start, end, prot, pages);
 flush_cache_vmap(start, end);
 return ret;
}
