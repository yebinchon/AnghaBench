
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* pp_fun ;
struct TYPE_6__ {void* expression; void* assignment_expression; void* conditional_expression; void* multiplicative_expression; void* unary_expression; void* postfix_expression; void* primary_expression; void* id_expression; void* constant; void* simple_type_specifier; void* direct_abstract_declarator; void* abstract_declarator; void* type_id; void* parameter_list; void* direct_declarator; void* declarator; void* type_specifier_seq; void* function_specifier; void* declaration_specifiers; void* declaration; } ;
struct TYPE_7__ {int enclosing_scope; TYPE_1__ c_base; } ;
typedef TYPE_2__ cxx_pretty_printer ;


 int global_namespace ;
 int pp_c_base (TYPE_2__*) ;
 int pp_c_pretty_printer_init (int ) ;
 scalar_t__ pp_cxx_abstract_declarator ;
 scalar_t__ pp_cxx_assignment_expression ;
 scalar_t__ pp_cxx_conditional_expression ;
 scalar_t__ pp_cxx_constant ;
 scalar_t__ pp_cxx_decl_specifier_seq ;
 scalar_t__ pp_cxx_declaration ;
 scalar_t__ pp_cxx_declarator ;
 scalar_t__ pp_cxx_direct_abstract_declarator ;
 scalar_t__ pp_cxx_direct_declarator ;
 scalar_t__ pp_cxx_expression ;
 scalar_t__ pp_cxx_function_specifier ;
 scalar_t__ pp_cxx_id_expression ;
 scalar_t__ pp_cxx_multiplicative_expression ;
 scalar_t__ pp_cxx_parameter_declaration_clause ;
 scalar_t__ pp_cxx_postfix_expression ;
 scalar_t__ pp_cxx_primary_expression ;
 scalar_t__ pp_cxx_simple_type_specifier ;
 scalar_t__ pp_cxx_type_id ;
 scalar_t__ pp_cxx_type_specifier_seq ;
 scalar_t__ pp_cxx_unary_expression ;
 int pp_set_line_maximum_length (TYPE_2__*,int ) ;

void
pp_cxx_pretty_printer_init (cxx_pretty_printer *pp)
{
  pp_c_pretty_printer_init (pp_c_base (pp));
  pp_set_line_maximum_length (pp, 0);

  pp->c_base.declaration = (pp_fun) pp_cxx_declaration;
  pp->c_base.declaration_specifiers = (pp_fun) pp_cxx_decl_specifier_seq;
  pp->c_base.function_specifier = (pp_fun) pp_cxx_function_specifier;
  pp->c_base.type_specifier_seq = (pp_fun) pp_cxx_type_specifier_seq;
  pp->c_base.declarator = (pp_fun) pp_cxx_declarator;
  pp->c_base.direct_declarator = (pp_fun) pp_cxx_direct_declarator;
  pp->c_base.parameter_list = (pp_fun) pp_cxx_parameter_declaration_clause;
  pp->c_base.type_id = (pp_fun) pp_cxx_type_id;
  pp->c_base.abstract_declarator = (pp_fun) pp_cxx_abstract_declarator;
  pp->c_base.direct_abstract_declarator =
    (pp_fun) pp_cxx_direct_abstract_declarator;
  pp->c_base.simple_type_specifier = (pp_fun)pp_cxx_simple_type_specifier;



  pp->c_base.constant = (pp_fun) pp_cxx_constant;
  pp->c_base.id_expression = (pp_fun) pp_cxx_id_expression;
  pp->c_base.primary_expression = (pp_fun) pp_cxx_primary_expression;
  pp->c_base.postfix_expression = (pp_fun) pp_cxx_postfix_expression;
  pp->c_base.unary_expression = (pp_fun) pp_cxx_unary_expression;
  pp->c_base.multiplicative_expression = (pp_fun) pp_cxx_multiplicative_expression;
  pp->c_base.conditional_expression = (pp_fun) pp_cxx_conditional_expression;
  pp->c_base.assignment_expression = (pp_fun) pp_cxx_assignment_expression;
  pp->c_base.expression = (pp_fun) pp_cxx_expression;
  pp->enclosing_scope = global_namespace;
}
