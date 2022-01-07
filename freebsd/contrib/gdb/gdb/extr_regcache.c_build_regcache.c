
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int register_valid_p; scalar_t__ readonly_p; } ;


 int current_gdbarch ;
 TYPE_1__* current_regcache ;
 int deprecated_grub_regcache_for_registers (TYPE_1__*) ;
 int deprecated_register_valid ;
 int deprecated_registers ;
 TYPE_1__* regcache_xmalloc (int ) ;

__attribute__((used)) static void
build_regcache (void)
{
  current_regcache = regcache_xmalloc (current_gdbarch);
  current_regcache->readonly_p = 0;
  deprecated_registers = deprecated_grub_regcache_for_registers (current_regcache);
  deprecated_register_valid = current_regcache->register_valid_p;
}
