
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int MEMORY_INSERT_BREAKPOINT (int ,char*) ;

int
memory_insert_breakpoint (CORE_ADDR addr, char *contents_cache)
{
  return MEMORY_INSERT_BREAKPOINT(addr, contents_cache);
}
