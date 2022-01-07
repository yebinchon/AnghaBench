
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table_elt {int exp; struct table_elt* next_same_value; struct table_elt* first_same_value; } ;


 int fprintf (int ,char*) ;
 int print_rtl (int ,int ) ;
 int stderr ;

void
dump_class (struct table_elt *classp)
{
  struct table_elt *elt;

  fprintf (stderr, "Equivalence chain for ");
  print_rtl (stderr, classp->exp);
  fprintf (stderr, ": \n");

  for (elt = classp->first_same_value; elt; elt = elt->next_same_value)
    {
      print_rtl (stderr, elt->exp);
      fprintf (stderr, "\n");
    }
}
