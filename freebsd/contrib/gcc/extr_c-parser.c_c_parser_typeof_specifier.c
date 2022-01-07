
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct c_typespec {int spec; int kind; } ;
struct c_type_name {int dummy; } ;
struct c_expr {int value; } ;
typedef int c_parser ;


 scalar_t__ COMPONENT_REF ;
 scalar_t__ CONSTANT_CLASS_P (int ) ;
 int CPP_CLOSE_PAREN ;
 int CPP_OPEN_PAREN ;
 scalar_t__ DECL_C_BIT_FIELD (int ) ;
 scalar_t__ DECL_P (int ) ;
 scalar_t__ EXPR_P (int ) ;
 int NOP_EXPR ;
 int NULL_TREE ;
 int RID_TYPEOF ;
 int SET_EXPR_LOCATION (int ,int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_TYPE (int ) ;
 int add_stmt (int ) ;
 int build1 (int ,int ,int ) ;
 int c_parser_consume_token (int *) ;
 struct c_expr c_parser_expression (int *) ;
 int c_parser_next_token_is_keyword (int *,int ) ;
 scalar_t__ c_parser_next_token_starts_typename (int *) ;
 int c_parser_require (int *,int ,char*) ;
 int c_parser_skip_until_found (int *,int ,char*) ;
 struct c_type_name* c_parser_type_name (int *) ;
 int ctsk_typeof ;
 int error (char*) ;
 int error_mark_node ;
 int gcc_assert (int ) ;
 int groktypename (struct c_type_name*) ;
 int in_typeof ;
 int input_location ;
 int pop_maybe_used (int) ;
 int skip_evaluation ;
 int variably_modified_type_p (int ,int ) ;
 int void_type_node ;

__attribute__((used)) static struct c_typespec
c_parser_typeof_specifier (c_parser *parser)
{
  struct c_typespec ret;
  ret.kind = ctsk_typeof;
  ret.spec = error_mark_node;
  gcc_assert (c_parser_next_token_is_keyword (parser, RID_TYPEOF));
  c_parser_consume_token (parser);
  skip_evaluation++;
  in_typeof++;
  if (!c_parser_require (parser, CPP_OPEN_PAREN, "expected %<(%>"))
    {
      skip_evaluation--;
      in_typeof--;
      return ret;
    }
  if (c_parser_next_token_starts_typename (parser))
    {
      struct c_type_name *type = c_parser_type_name (parser);
      skip_evaluation--;
      in_typeof--;
      if (type != ((void*)0))
 {
   ret.spec = groktypename (type);
   pop_maybe_used (variably_modified_type_p (ret.spec, NULL_TREE));
 }
    }
  else
    {
      bool was_vm;
      struct c_expr expr = c_parser_expression (parser);
      skip_evaluation--;
      in_typeof--;
      if (TREE_CODE (expr.value) == COMPONENT_REF
   && DECL_C_BIT_FIELD (TREE_OPERAND (expr.value, 1)))
 error ("%<typeof%> applied to a bit-field");
      ret.spec = TREE_TYPE (expr.value);
      was_vm = variably_modified_type_p (ret.spec, NULL_TREE);



      if (!skip_evaluation && was_vm)
 {
   tree e = expr.value;



   if (DECL_P (e) || CONSTANT_CLASS_P (e))
     e = build1 (NOP_EXPR, void_type_node, e);

   if (EXPR_P (e))
     SET_EXPR_LOCATION (e, input_location);

   add_stmt (e);
 }
      pop_maybe_used (was_vm);
    }
  c_parser_skip_until_found (parser, CPP_CLOSE_PAREN, "expected %<)%>");
  return ret;
}
