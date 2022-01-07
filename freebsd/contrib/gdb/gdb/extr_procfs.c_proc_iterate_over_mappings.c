
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int procinfo ;


 int PIDGET (int ) ;
 int * find_procinfo_or_die (int ,int ) ;
 int inferior_ptid ;
 int iterate_over_mappings (int *,int (*) (int,CORE_ADDR),int *,int ) ;
 int solib_mappings_callback ;

int
proc_iterate_over_mappings (int (*func) (int, CORE_ADDR))
{
  procinfo *pi = find_procinfo_or_die (PIDGET (inferior_ptid), 0);

  return iterate_over_mappings (pi, func, pi, solib_mappings_callback);
}
