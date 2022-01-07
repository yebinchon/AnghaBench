
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union exp_element {struct symbol* symbol; } ;
struct symbol {int dummy; } ;


 int write_exp_elt (union exp_element) ;

void
write_exp_elt_sym (struct symbol *expelt)
{
  union exp_element tmp;

  tmp.symbol = expelt;

  write_exp_elt (tmp);
}
