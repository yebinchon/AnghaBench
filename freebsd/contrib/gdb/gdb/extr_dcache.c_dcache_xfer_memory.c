
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DCACHE ;
typedef scalar_t__ CORE_ADDR ;


 int dcache_peek_byte (int *,scalar_t__,char*) ;
 int dcache_poke_byte (int *,scalar_t__,char*) ;
 int dcache_writeback (int *) ;

int
dcache_xfer_memory (DCACHE *dcache, CORE_ADDR memaddr, char *myaddr, int len,
      int should_write)
{
  int i;
  int (*xfunc) (DCACHE *dcache, CORE_ADDR addr, char *ptr);
  xfunc = should_write ? dcache_poke_byte : dcache_peek_byte;

  for (i = 0; i < len; i++)
    {
      if (!xfunc (dcache, memaddr + i, myaddr + i))
 return 0;
    }
  if (should_write)
    dcache_writeback (dcache);

  return len;
}
