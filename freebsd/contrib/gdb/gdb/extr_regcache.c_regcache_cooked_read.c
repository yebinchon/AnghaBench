
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regcache {TYPE_1__* descr; scalar_t__* register_valid_p; scalar_t__ readonly_p; } ;
struct TYPE_2__ {int nr_cooked_registers; int nr_raw_registers; int gdbarch; int * sizeof_register; } ;


 int gdb_assert (int) ;
 int gdbarch_pseudo_register_read (int ,struct regcache*,int,void*) ;
 int memcpy (void*,int ,int ) ;
 int regcache_raw_read (struct regcache*,int,void*) ;
 int register_buffer (struct regcache*,int) ;

void
regcache_cooked_read (struct regcache *regcache, int regnum, void *buf)
{
  gdb_assert (regnum >= 0);
  gdb_assert (regnum < regcache->descr->nr_cooked_registers);
  if (regnum < regcache->descr->nr_raw_registers)
    regcache_raw_read (regcache, regnum, buf);
  else if (regcache->readonly_p
    && regnum < regcache->descr->nr_cooked_registers
    && regcache->register_valid_p[regnum])

    memcpy (buf, register_buffer (regcache, regnum),
     regcache->descr->sizeof_register[regnum]);
  else
    gdbarch_pseudo_register_read (regcache->descr->gdbarch, regcache,
      regnum, buf);
}
