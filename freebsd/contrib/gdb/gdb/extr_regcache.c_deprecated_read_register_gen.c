
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* descr; } ;
struct TYPE_4__ {scalar_t__ gdbarch; scalar_t__ legacy_p; } ;


 scalar_t__ current_gdbarch ;
 TYPE_2__* current_regcache ;
 int gdb_assert (int) ;
 int legacy_read_register_gen (int,char*) ;
 int regcache_cooked_read (TYPE_2__*,int,char*) ;

void
deprecated_read_register_gen (int regnum, char *buf)
{
  gdb_assert (current_regcache != ((void*)0));
  gdb_assert (current_regcache->descr->gdbarch == current_gdbarch);
  if (current_regcache->descr->legacy_p)
    {
      legacy_read_register_gen (regnum, buf);
      return;
    }
  regcache_cooked_read (current_regcache, regnum, buf);
}
