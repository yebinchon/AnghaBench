
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct c_type_name {int dummy; } ;
struct c_expr {int original_code; int value; } ;
typedef int c_parser ;


 scalar_t__ C_TYPE_VARIABLE_SIZE (scalar_t__) ;
 int ERROR_MARK ;
 int NULL_TREE ;
 int build_compound_literal (scalar_t__,int ) ;
 struct c_expr c_parser_braced_init (int *,scalar_t__,int) ;
 struct c_expr c_parser_postfix_expression_after_primary (int *,struct c_expr) ;
 int error (char*) ;
 scalar_t__ error_mark_node ;
 int finish_init () ;
 int flag_isoc99 ;
 scalar_t__ groktypename (struct c_type_name*) ;
 int maybe_warn_string_init (scalar_t__,struct c_expr) ;
 scalar_t__ pedantic ;
 int pedwarn (char*) ;
 int start_init (int ,int *,int ) ;

__attribute__((used)) static struct c_expr
c_parser_postfix_expression_after_paren_type (c_parser *parser,
           struct c_type_name *type_name)
{
  tree type;
  struct c_expr init;
  struct c_expr expr;
  start_init (NULL_TREE, ((void*)0), 0);
  type = groktypename (type_name);
  if (type != error_mark_node && C_TYPE_VARIABLE_SIZE (type))
    {
      error ("compound literal has variable size");
      type = error_mark_node;
    }
  init = c_parser_braced_init (parser, type, 0);
  finish_init ();
  maybe_warn_string_init (type, init);

  if (pedantic && !flag_isoc99)
    pedwarn ("ISO C90 forbids compound literals");
  expr.value = build_compound_literal (type, init.value);
  expr.original_code = ERROR_MARK;
  return c_parser_postfix_expression_after_primary (parser, expr);
}
