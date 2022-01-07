
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONGEST ;
typedef scalar_t__ CORE_ADDR ;


 int IA64_BSPSTORE_REGNUM ;
 int IA64_BSP_REGNUM ;
 int TARGET_OBJECT_DIRTY ;
 int current_regcache ;
 int current_target ;
 int regcache_cooked_read_unsigned (int ,int ,scalar_t__*) ;
 int target_write_partial (int *,int ,void*,void*,scalar_t__,int) ;
 int write_memory (scalar_t__,void*,int) ;

__attribute__((used)) static void
ia64_write_reg (CORE_ADDR addr, void *buf, int len)
{
  ULONGEST bspstore;
  regcache_cooked_read_unsigned (current_regcache, IA64_BSPSTORE_REGNUM,
     &bspstore);
  if (addr >= bspstore)
    {
      ULONGEST bsp;
      regcache_cooked_read_unsigned (current_regcache, IA64_BSP_REGNUM,
         &bsp);
      if (addr < bsp)
 {
   target_write_partial (&current_target, TARGET_OBJECT_DIRTY,
    (void*)&bspstore, buf, addr - bspstore, len);
   return;
 }
    }
  write_memory (addr, buf, len);
}
