
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int * def_operand_p ;



__attribute__((used)) static inline tree
get_def_from_ptr (def_operand_p def)
{
  return *def;
}
