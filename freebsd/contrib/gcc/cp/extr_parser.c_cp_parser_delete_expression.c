
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int tree ;
struct TYPE_8__ {int lexer; } ;
typedef TYPE_1__ cp_parser ;


 int CPP_CLOSE_SQUARE ;
 int CPP_OPEN_SQUARE ;
 scalar_t__ NULL_TREE ;
 int RID_DELETE ;
 int cp_lexer_consume_token (int ) ;
 scalar_t__ cp_lexer_next_token_is (int ,int ) ;
 scalar_t__ cp_parser_global_scope_opt (TYPE_1__*,int) ;
 scalar_t__ cp_parser_non_integral_constant_expression (TYPE_1__*,char*) ;
 int cp_parser_require (TYPE_1__*,int ,char*) ;
 int cp_parser_require_keyword (TYPE_1__*,int ,char*) ;
 int cp_parser_simple_cast_expression (TYPE_1__*) ;
 int delete_sanity (int ,scalar_t__,int,int) ;
 int error_mark_node ;

__attribute__((used)) static tree
cp_parser_delete_expression (cp_parser* parser)
{
  bool global_scope_p;
  bool array_p;
  tree expression;


  global_scope_p
    = (cp_parser_global_scope_opt (parser,
                                 0)
       != NULL_TREE);

  cp_parser_require_keyword (parser, RID_DELETE, "`delete'");

  if (cp_lexer_next_token_is (parser->lexer, CPP_OPEN_SQUARE))
    {

      cp_lexer_consume_token (parser->lexer);

      cp_parser_require (parser, CPP_CLOSE_SQUARE, "`]'");

      array_p = 1;
    }
  else
    array_p = 0;


  expression = cp_parser_simple_cast_expression (parser);



  if (cp_parser_non_integral_constant_expression (parser, "`delete'"))
    return error_mark_node;

  return delete_sanity (expression, NULL_TREE, array_p, global_scope_p);
}
