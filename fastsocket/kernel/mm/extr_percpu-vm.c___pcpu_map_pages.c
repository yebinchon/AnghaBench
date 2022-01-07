
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int PAGE_KERNEL ;
 int PAGE_SHIFT ;
 int map_kernel_range_noflush (unsigned long,int,int ,struct page**) ;

__attribute__((used)) static int __pcpu_map_pages(unsigned long addr, struct page **pages,
       int nr_pages)
{
 return map_kernel_range_noflush(addr, nr_pages << PAGE_SHIFT,
     PAGE_KERNEL, pages);
}
