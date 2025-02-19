
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int * tree ;
typedef int location_t ;
typedef int c_parser ;
struct TYPE_12__ {int * value; } ;
struct TYPE_11__ {int * value; } ;
struct TYPE_10__ {int * value; } ;
struct TYPE_9__ {scalar_t__ type; } ;
struct TYPE_8__ {int location; } ;
struct TYPE_7__ {int * value; } ;


 int CPP_CLOSE_PAREN ;
 scalar_t__ CPP_EQ ;
 int CPP_NAME ;
 scalar_t__ CPP_OPEN_PAREN ;
 int CPP_SEMICOLON ;
 scalar_t__ EXPR_P (int *) ;
 int LABEL_EXPR ;
 int NOP_EXPR ;
 void* NULL_TREE ;
 int RID_FOR ;
 int SET_EXPR_LOCATION (int *,int ) ;
 int add_stmt (int ) ;
 int build1 (int ,int ,int *) ;
 int * build_modify_expr (int *,int ,int *) ;
 int * c_break_label ;
 int * c_cont_label ;
 int * c_finish_omp_for (int ,int *,int *,int *,int *,int *,int *) ;
 int * c_objc_common_truthvalue_conversion (int *) ;
 int c_parser_c99_block_statement (int *) ;
 int c_parser_consume_token (int *) ;
 int c_parser_declaration_or_fndef (int *,int,int,int,int,int *) ;
 int c_parser_error (int *,char*) ;
 TYPE_6__ c_parser_expr_no_commas (int *,int *) ;
 TYPE_5__ c_parser_expression (int *) ;
 TYPE_4__ c_parser_expression_conv (int *) ;
 scalar_t__ c_parser_next_token_is (int *,int ) ;
 int c_parser_next_token_is_keyword (int *,int ) ;
 scalar_t__ c_parser_next_token_is_not (int *,int ) ;
 scalar_t__ c_parser_next_token_starts_declspecs (int *) ;
 TYPE_3__* c_parser_peek_2nd_token (int *) ;
 TYPE_2__* c_parser_peek_token (int *) ;
 TYPE_1__ c_parser_postfix_expression (int *) ;
 int c_parser_require (int *,scalar_t__,char*) ;
 int c_parser_skip_until_found (int *,int ,char*) ;
 int * c_process_expr_stmt (int *) ;
 int * check_for_loop_decls () ;
 int * error_mark_node ;
 int input_location ;
 int * pop_stmt_list (int *) ;
 int * push_stmt_list () ;
 int * size_one_node ;
 int void_type_node ;

__attribute__((used)) static tree
c_parser_omp_for_loop (c_parser *parser)
{
  tree decl, cond, incr, save_break, save_cont, body, init;
  location_t loc;

  if (!c_parser_next_token_is_keyword (parser, RID_FOR))
    {
      c_parser_error (parser, "for statement expected");
      return ((void*)0);
    }
  loc = c_parser_peek_token (parser)->location;
  c_parser_consume_token (parser);

  if (!c_parser_require (parser, CPP_OPEN_PAREN, "expected %<(%>"))
    return ((void*)0);


  if (c_parser_next_token_starts_declspecs (parser))
    {

      c_parser_declaration_or_fndef (parser, 1, 1, 1, 1, ((void*)0));
      decl = check_for_loop_decls ();
      if (decl == ((void*)0))
 goto error_init;
      init = decl;
    }
  else if (c_parser_next_token_is (parser, CPP_NAME)
    && c_parser_peek_2nd_token (parser)->type == CPP_EQ)
    {
      decl = c_parser_postfix_expression (parser).value;

      c_parser_require (parser, CPP_EQ, "expected %<=%>");

      init = c_parser_expr_no_commas (parser, ((void*)0)).value;
      init = build_modify_expr (decl, NOP_EXPR, init);
      init = c_process_expr_stmt (init);

      c_parser_skip_until_found (parser, CPP_SEMICOLON, "expected %<;%>");
    }
  else
    goto error_init;


  cond = NULL_TREE;
  if (c_parser_next_token_is_not (parser, CPP_SEMICOLON))
    {
      cond = c_parser_expression_conv (parser).value;
      cond = c_objc_common_truthvalue_conversion (cond);
      if (EXPR_P (cond))
 SET_EXPR_LOCATION (cond, input_location);
    }
  c_parser_skip_until_found (parser, CPP_SEMICOLON, "expected %<;%>");


  incr = NULL_TREE;
  if (c_parser_next_token_is_not (parser, CPP_CLOSE_PAREN))
    incr = c_process_expr_stmt (c_parser_expression (parser).value);
  c_parser_skip_until_found (parser, CPP_CLOSE_PAREN, "expected %<)%>");

 parse_body:
  save_break = c_break_label;
  c_break_label = size_one_node;
  save_cont = c_cont_label;
  c_cont_label = NULL_TREE;
  body = push_stmt_list ();

  add_stmt (c_parser_c99_block_statement (parser));
  if (c_cont_label)
    add_stmt (build1 (LABEL_EXPR, void_type_node, c_cont_label));

  body = pop_stmt_list (body);
  c_break_label = save_break;
  c_cont_label = save_cont;



  if (decl != ((void*)0) && decl != error_mark_node && init != error_mark_node)
    return c_finish_omp_for (loc, decl, init, cond, incr, body, ((void*)0));
  return ((void*)0);

 error_init:
  c_parser_error (parser, "expected iteration declaration or initialization");
  c_parser_skip_until_found (parser, CPP_CLOSE_PAREN, "expected %<)%>");
  decl = init = cond = incr = NULL_TREE;
  goto parse_body;
}
