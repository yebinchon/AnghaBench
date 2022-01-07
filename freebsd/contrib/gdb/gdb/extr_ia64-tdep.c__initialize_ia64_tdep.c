
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bfd_arch_ia64 ;
 int ia64_gdbarch_init ;
 int register_gdbarch_init (int ,int ) ;

void
_initialize_ia64_tdep (void)
{
  register_gdbarch_init (bfd_arch_ia64, ia64_gdbarch_init);
}
