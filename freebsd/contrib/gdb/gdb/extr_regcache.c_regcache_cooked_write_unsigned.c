
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regcache {TYPE_1__* descr; } ;
typedef int ULONGEST ;
struct TYPE_2__ {int nr_cooked_registers; int * sizeof_register; } ;


 void* alloca (int ) ;
 int gdb_assert (int) ;
 int regcache_cooked_write (struct regcache*,int,void*) ;
 int store_unsigned_integer (void*,int ,int ) ;

void
regcache_cooked_write_unsigned (struct regcache *regcache, int regnum,
    ULONGEST val)
{
  void *buf;
  gdb_assert (regcache != ((void*)0));
  gdb_assert (regnum >=0 && regnum < regcache->descr->nr_cooked_registers);
  buf = alloca (regcache->descr->sizeof_register[regnum]);
  store_unsigned_integer (buf, regcache->descr->sizeof_register[regnum], val);
  regcache_cooked_write (regcache, regnum, buf);
}
