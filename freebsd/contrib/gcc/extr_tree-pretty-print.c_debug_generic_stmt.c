
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int TDF_UID ;
 int TDF_VOPS ;
 int fprintf (int ,char*) ;
 int print_generic_stmt (int ,int ,int) ;
 int stderr ;

void
debug_generic_stmt (tree t)
{
  print_generic_stmt (stderr, t, TDF_VOPS|TDF_UID);
  fprintf (stderr, "\n");
}
