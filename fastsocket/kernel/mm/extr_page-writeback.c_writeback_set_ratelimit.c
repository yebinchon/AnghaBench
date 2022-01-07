
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_CACHE_SIZE ;
 int num_online_cpus () ;
 int ratelimit_pages ;
 int vm_total_pages ;

void writeback_set_ratelimit(void)
{
 ratelimit_pages = vm_total_pages / (num_online_cpus() * 32);
 if (ratelimit_pages < 16)
  ratelimit_pages = 16;
 if (ratelimit_pages * PAGE_CACHE_SIZE > 4096 * 1024)
  ratelimit_pages = (4096 * 1024) / PAGE_CACHE_SIZE;
}
