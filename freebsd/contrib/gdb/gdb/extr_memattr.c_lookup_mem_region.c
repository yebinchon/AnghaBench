
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_region {int enabled_p; scalar_t__ lo; scalar_t__ hi; int attrib; struct mem_region* next; } ;
typedef scalar_t__ CORE_ADDR ;


 int default_mem_attrib ;
 struct mem_region* mem_region_chain ;

struct mem_region *
lookup_mem_region (CORE_ADDR addr)
{
  static struct mem_region region;
  struct mem_region *m;
  CORE_ADDR lo;
  CORE_ADDR hi;
  lo = (CORE_ADDR) 0;
  hi = (CORE_ADDR) ~ 0;

  for (m = mem_region_chain; m; m = m->next)
    {
      if (m->enabled_p == 1)
 {
   if (addr >= m->lo && (addr < m->hi || m->hi == 0))
     return m;

   if (addr >= m->hi && lo < m->hi)
     lo = m->hi;

   if (addr <= m->lo && hi > m->lo)
     hi = m->lo;
 }
    }



  region.lo = lo;
  region.hi = hi;
  region.attrib = default_mem_attrib;
  return &region;
}
