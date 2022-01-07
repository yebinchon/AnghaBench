
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regcache {scalar_t__ readonly_p; TYPE_1__* descr; } ;
struct TYPE_2__ {scalar_t__ gdbarch; } ;


 int do_cooked_read ;
 int gdb_assert (int) ;
 int regcache_cpy_no_passthrough (struct regcache*,struct regcache*) ;
 int regcache_restore (struct regcache*,int ,struct regcache*) ;
 int regcache_save (struct regcache*,int ,struct regcache*) ;

void
regcache_cpy (struct regcache *dst, struct regcache *src)
{
  int i;
  char *buf;
  gdb_assert (src != ((void*)0) && dst != ((void*)0));
  gdb_assert (src->descr->gdbarch == dst->descr->gdbarch);
  gdb_assert (src != dst);
  gdb_assert (src->readonly_p || dst->readonly_p);
  if (!src->readonly_p)
    regcache_save (dst, do_cooked_read, src);
  else if (!dst->readonly_p)
    regcache_restore (dst, do_cooked_read, src);
  else
    regcache_cpy_no_passthrough (dst, src);
}
