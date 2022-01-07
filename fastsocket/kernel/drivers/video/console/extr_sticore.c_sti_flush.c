
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flush_icache_range (unsigned long,unsigned long) ;

__attribute__((used)) static void sti_flush(unsigned long start, unsigned long end)
{
 flush_icache_range(start, end);
}
