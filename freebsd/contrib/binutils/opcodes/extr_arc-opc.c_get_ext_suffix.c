
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arc_operand_value {scalar_t__ type; int name; } ;
struct arc_ext_operand_value {struct arc_ext_operand_value* next; struct arc_operand_value operand; } ;


 scalar_t__ COND ;
 struct arc_ext_operand_value* arc_ext_operands ;
 int strcmp (char*,int ) ;

struct arc_operand_value *
get_ext_suffix (char *s)
{
  struct arc_ext_operand_value *suffix = arc_ext_operands;

  while (suffix)
    {
      if ((COND == suffix->operand.type)
   && !strcmp(s,suffix->operand.name))
 return(&suffix->operand);
      suffix = suffix->next;
    }
  return ((void*)0);
}
