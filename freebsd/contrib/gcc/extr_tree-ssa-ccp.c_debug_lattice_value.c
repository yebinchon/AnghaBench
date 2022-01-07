
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int prop_value_t ;


 int dump_lattice_value (int ,char*,int ) ;
 int fprintf (int ,char*) ;
 int stderr ;

void
debug_lattice_value (prop_value_t val)
{
  dump_lattice_value (stderr, "", val);
  fprintf (stderr, "\n");
}
