
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regcache {TYPE_1__* descr; } ;
struct TYPE_2__ {int nr_cooked_registers; int nr_raw_registers; int gdbarch; } ;


 int gdb_assert (int) ;
 int gdbarch_pseudo_register_write (int ,struct regcache*,int,void const*) ;
 int regcache_raw_write (struct regcache*,int,void const*) ;

void
regcache_cooked_write (struct regcache *regcache, int regnum, const void *buf)
{
  gdb_assert (regnum >= 0);
  gdb_assert (regnum < regcache->descr->nr_cooked_registers);
  if (regnum < regcache->descr->nr_raw_registers)
    regcache_raw_write (regcache, regnum, buf);
  else
    gdbarch_pseudo_register_write (regcache->descr->gdbarch, regcache,
       regnum, buf);
}
