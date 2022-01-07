
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_gdbarch ;
 int regcache_xmalloc (int ) ;
 int stop_registers ;

__attribute__((used)) static void
build_infrun (void)
{
  stop_registers = regcache_xmalloc (current_gdbarch);
}
