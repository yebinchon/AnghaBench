
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union exp_element {int opcode; } ;
typedef enum exp_opcode { ____Placeholder_exp_opcode } exp_opcode ;


 int write_exp_elt (union exp_element) ;

void
write_exp_elt_opcode (enum exp_opcode expelt)
{
  union exp_element tmp;

  tmp.opcode = expelt;

  write_exp_elt (tmp);
}
