
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regcache {int dummy; } ;
typedef int CORE_ADDR ;


 struct regcache* deprecated_find_dummy_frame_regcache (int ,int ) ;
 char* deprecated_grub_regcache_for_registers (struct regcache*) ;

char *
deprecated_generic_find_dummy_frame (CORE_ADDR pc, CORE_ADDR fp)
{
  struct regcache *regcache = deprecated_find_dummy_frame_regcache (pc, fp);
  if (regcache == ((void*)0))
    return ((void*)0);
  return deprecated_grub_regcache_for_registers (regcache);
}
