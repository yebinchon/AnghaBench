
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_detail {int flush_time; int nextcheck; } ;


 int LONG_MAX ;
 int cache_flush () ;
 int seconds_since_boot () ;

void cache_purge(struct cache_detail *detail)
{
 detail->flush_time = LONG_MAX;
 detail->nextcheck = seconds_since_boot();
 cache_flush();
 detail->flush_time = 1;
}
