
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regcache {int dummy; } ;
typedef int ULONGEST ;
typedef int CORE_ADDR ;


 struct regcache* deprecated_find_dummy_frame_regcache (int ,int ) ;
 int regcache_cooked_read_unsigned (struct regcache*,int,int *) ;

CORE_ADDR
deprecated_read_register_dummy (CORE_ADDR pc, CORE_ADDR fp, int regno)
{
  struct regcache *dummy_regs = deprecated_find_dummy_frame_regcache (pc, fp);

  if (dummy_regs)
    {
      ULONGEST val;
      regcache_cooked_read_unsigned (dummy_regs, regno, &val);
      return val;
    }
  else
    return 0;
}
