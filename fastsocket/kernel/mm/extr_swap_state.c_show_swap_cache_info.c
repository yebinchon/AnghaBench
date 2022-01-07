
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int find_total; int find_success; int del_total; int add_total; } ;


 int PAGE_SHIFT ;
 int nr_swap_pages ;
 int printk (char*,int,...) ;
 TYPE_1__ swap_cache_info ;
 int total_swap_pages ;
 int total_swapcache_pages ;

void show_swap_cache_info(void)
{
 printk("%lu pages in swap cache\n", total_swapcache_pages);
 printk("Swap cache stats: add %lu, delete %lu, find %lu/%lu\n",
  swap_cache_info.add_total, swap_cache_info.del_total,
  swap_cache_info.find_success, swap_cache_info.find_total);
 printk("Free swap  = %ldkB\n", nr_swap_pages << (PAGE_SHIFT - 10));
 printk("Total swap = %lukB\n", total_swap_pages << (PAGE_SHIFT - 10));
}
