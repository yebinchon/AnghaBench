
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
struct TYPE_3__ {int ellipsis_p; int default_argument; int * declarator; int decl_specifiers; int * next; } ;
typedef TYPE_1__ cp_parameter_declarator ;
typedef int cp_declarator ;
typedef int cp_decl_specifier_seq ;


 scalar_t__ alloc_declarator (int) ;
 int clear_decl_specs (int *) ;

cp_parameter_declarator *
make_parameter_declarator (cp_decl_specifier_seq *decl_specifiers,
      cp_declarator *declarator,
      tree default_argument)
{
  cp_parameter_declarator *parameter;

  parameter = ((cp_parameter_declarator *)
        alloc_declarator (sizeof (cp_parameter_declarator)));
  parameter->next = ((void*)0);
  if (decl_specifiers)
    parameter->decl_specifiers = *decl_specifiers;
  else
    clear_decl_specs (&parameter->decl_specifiers);
  parameter->declarator = declarator;
  parameter->default_argument = default_argument;
  parameter->ellipsis_p = 0;

  return parameter;
}
