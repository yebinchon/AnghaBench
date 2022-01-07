
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int skip_solib_resolver; } ;
typedef int gdbarch_skip_solib_resolver_ftype ;



void
set_gdbarch_skip_solib_resolver (struct gdbarch *gdbarch,
                                 gdbarch_skip_solib_resolver_ftype skip_solib_resolver)
{
  gdbarch->skip_solib_resolver = skip_solib_resolver;
}
