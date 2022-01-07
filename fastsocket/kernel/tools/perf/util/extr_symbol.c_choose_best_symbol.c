
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int end; int start; scalar_t__ binding; int name; } ;
typedef int s64 ;


 scalar_t__ STB_GLOBAL ;
 scalar_t__ STB_WEAK ;
 int SYMBOL_A ;
 int SYMBOL_B ;
 int prefix_underscores_count (int ) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static int choose_best_symbol(struct symbol *syma, struct symbol *symb)
{
 s64 a;
 s64 b;


 a = syma->end - syma->start;
 b = symb->end - symb->start;
 if ((b == 0) && (a > 0))
  return SYMBOL_A;
 else if ((a == 0) && (b > 0))
  return SYMBOL_B;


 a = syma->binding == STB_WEAK;
 b = symb->binding == STB_WEAK;
 if (b && !a)
  return SYMBOL_A;
 if (a && !b)
  return SYMBOL_B;


 a = syma->binding == STB_GLOBAL;
 b = symb->binding == STB_GLOBAL;
 if (a && !b)
  return SYMBOL_A;
 if (b && !a)
  return SYMBOL_B;


 a = prefix_underscores_count(syma->name);
 b = prefix_underscores_count(symb->name);
 if (b > a)
  return SYMBOL_A;
 else if (a > b)
  return SYMBOL_B;


 if (strlen(syma->name) >= strlen(symb->name))
  return SYMBOL_A;
 else
  return SYMBOL_B;
}
