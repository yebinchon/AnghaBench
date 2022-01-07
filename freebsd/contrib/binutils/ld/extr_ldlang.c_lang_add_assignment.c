
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * exp; } ;
typedef TYPE_1__ lang_assignment_statement_type ;
typedef int etree_type ;


 int lang_assignment_statement ;
 TYPE_1__* new_stat (int ,int ) ;
 int stat_ptr ;

lang_assignment_statement_type *
lang_add_assignment (etree_type *exp)
{
  lang_assignment_statement_type *new;

  new = new_stat (lang_assignment_statement, stat_ptr);
  new->exp = exp;
  return new;
}
