
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int MEMORY_REMOVE_BREAKPOINT (int ,char*) ;

int
memory_remove_breakpoint (CORE_ADDR addr, char *contents_cache)
{
  return MEMORY_REMOVE_BREAKPOINT(addr, contents_cache);
}
