
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 unsigned char* BREAKPOINT_FROM_PC (int *,int*) ;
 int error (char*) ;
 int target_write_memory (int ,char*,int) ;

int
default_memory_remove_breakpoint (CORE_ADDR addr, char *contents_cache)
{
  const unsigned char *bp;
  int bplen;


  bp = BREAKPOINT_FROM_PC (&addr, &bplen);
  if (bp == ((void*)0))
    error ("Software breakpoints not implemented for this target.");

  return target_write_memory (addr, contents_cache, bplen);
}
