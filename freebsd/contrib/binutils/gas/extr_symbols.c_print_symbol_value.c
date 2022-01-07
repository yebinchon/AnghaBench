
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbolS ;


 int fprintf (int ,char*) ;
 scalar_t__ indent_level ;
 int print_symbol_value_1 (int ,int *) ;
 int stderr ;

void
print_symbol_value (symbolS *sym)
{
  indent_level = 0;
  print_symbol_value_1 (stderr, sym);
  fprintf (stderr, "\n");
}
