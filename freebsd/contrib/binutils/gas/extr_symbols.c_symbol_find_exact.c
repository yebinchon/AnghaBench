
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbolS ;


 int * symbol_find_exact_noref (char const*,int ) ;

symbolS *
symbol_find_exact (const char *name)
{
  return symbol_find_exact_noref (name, 0);
}
