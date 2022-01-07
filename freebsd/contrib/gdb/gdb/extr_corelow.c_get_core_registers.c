
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * core_read_registers; } ;


 scalar_t__ core_gdbarch ;
 TYPE_1__* core_vec ;
 int deprecated_registers_fetched () ;
 int fprintf_filtered (int ,char*) ;
 int gdb_stderr ;
 scalar_t__ gdbarch_regset_from_core_section_p (scalar_t__) ;
 int get_core_register_section (char*,int,char*,int) ;

__attribute__((used)) static void
get_core_registers (int regno)
{
  int status;

  if (!(core_gdbarch && gdbarch_regset_from_core_section_p (core_gdbarch))
      && (core_vec == ((void*)0) || core_vec->core_read_registers == ((void*)0)))
    {
      fprintf_filtered (gdb_stderr,
       "Can't fetch registers from this type of core file\n");
      return;
    }

  get_core_register_section (".reg", 0, "general-purpose", 1);
  get_core_register_section (".reg2", 2, "floating-point", 0);
  get_core_register_section (".reg-xfp", 3, "extended floating-point", 0);

  deprecated_registers_fetched ();
}
