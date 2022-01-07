
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kgdb_arch_exit () ;
 scalar_t__ kgdb_con_registered ;
 scalar_t__ kgdb_io_module_registered ;
 int kgdbcons ;
 int sysrq_gdb_op ;
 int unregister_console (int *) ;
 int unregister_sysrq_key (char,int *) ;

__attribute__((used)) static void kgdb_unregister_callbacks(void)
{





 if (kgdb_io_module_registered) {
  kgdb_io_module_registered = 0;
  kgdb_arch_exit();



  if (kgdb_con_registered) {
   unregister_console(&kgdbcons);
   kgdb_con_registered = 0;
  }
 }
}
