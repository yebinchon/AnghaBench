
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int expression; int assignment_expression; int conditional_expression; int multiplicative_expression; int initializer; int unary_expression; int postfix_expression; int primary_expression; int id_expression; int constant; int statement; int storage_class_specifier; int function_specifier; int simple_type_specifier; int type_id; int parameter_list; int ptr_operator; int direct_abstract_declarator; int abstract_declarator; int type_specifier_seq; int direct_declarator; int declarator; int declaration_specifiers; int declaration; scalar_t__ offset_list; } ;
typedef TYPE_1__ c_pretty_printer ;


 int pp_c_abstract_declarator ;
 int pp_c_assignment_expression ;
 int pp_c_conditional_expression ;
 int pp_c_constant ;
 int pp_c_declaration ;
 int pp_c_declaration_specifiers ;
 int pp_c_declarator ;
 int pp_c_direct_abstract_declarator ;
 int pp_c_direct_declarator ;
 int pp_c_expression ;
 int pp_c_function_specifier ;
 int pp_c_id_expression ;
 int pp_c_initializer ;
 int pp_c_multiplicative_expression ;
 int pp_c_parameter_type_list ;
 int pp_c_pointer ;
 int pp_c_postfix_expression ;
 int pp_c_primary_expression ;
 int pp_c_specifier_qualifier_list ;
 int pp_c_statement ;
 int pp_c_storage_class_specifier ;
 int pp_c_type_id ;
 int pp_c_type_specifier ;
 int pp_c_unary_expression ;

void
pp_c_pretty_printer_init (c_pretty_printer *pp)
{
  pp->offset_list = 0;

  pp->declaration = pp_c_declaration;
  pp->declaration_specifiers = pp_c_declaration_specifiers;
  pp->declarator = pp_c_declarator;
  pp->direct_declarator = pp_c_direct_declarator;
  pp->type_specifier_seq = pp_c_specifier_qualifier_list;
  pp->abstract_declarator = pp_c_abstract_declarator;
  pp->direct_abstract_declarator = pp_c_direct_abstract_declarator;
  pp->ptr_operator = pp_c_pointer;
  pp->parameter_list = pp_c_parameter_type_list;
  pp->type_id = pp_c_type_id;
  pp->simple_type_specifier = pp_c_type_specifier;
  pp->function_specifier = pp_c_function_specifier;
  pp->storage_class_specifier = pp_c_storage_class_specifier;

  pp->statement = pp_c_statement;

  pp->constant = pp_c_constant;
  pp->id_expression = pp_c_id_expression;
  pp->primary_expression = pp_c_primary_expression;
  pp->postfix_expression = pp_c_postfix_expression;
  pp->unary_expression = pp_c_unary_expression;
  pp->initializer = pp_c_initializer;
  pp->multiplicative_expression = pp_c_multiplicative_expression;
  pp->conditional_expression = pp_c_conditional_expression;
  pp->assignment_expression = pp_c_assignment_expression;
  pp->expression = pp_c_expression;
}
