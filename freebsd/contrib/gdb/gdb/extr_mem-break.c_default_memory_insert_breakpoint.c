
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 unsigned char* BREAKPOINT_FROM_PC (int *,int*) ;
 int error (char*) ;
 int target_read_memory (int ,char*,int) ;
 int target_write_memory (int ,char*,int) ;

int
default_memory_insert_breakpoint (CORE_ADDR addr, char *contents_cache)
{
  int val;
  const unsigned char *bp;
  int bplen;


  bp = BREAKPOINT_FROM_PC (&addr, &bplen);
  if (bp == ((void*)0))
    error ("Software breakpoints not implemented for this target.");


  val = target_read_memory (addr, contents_cache, bplen);


  if (val == 0)
    val = target_write_memory (addr, (char *) bp, bplen);

  return val;
}
