
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union exp_element {int longconst; } ;
typedef int LONGEST ;


 int write_exp_elt (union exp_element) ;

void
write_exp_elt_longcst (LONGEST expelt)
{
  union exp_element tmp;

  tmp.longconst = expelt;

  write_exp_elt (tmp);
}
