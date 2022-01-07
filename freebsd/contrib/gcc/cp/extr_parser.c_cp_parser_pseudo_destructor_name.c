
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_9__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_10__ {int lexer; } ;
typedef TYPE_1__ cp_parser ;
struct TYPE_11__ {scalar_t__ type; } ;


 scalar_t__ CPP_COMPL ;
 scalar_t__ CPP_SCOPE ;
 scalar_t__ NULL_TREE ;
 int RID_TEMPLATE ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 int cp_lexer_consume_token (int ) ;
 scalar_t__ cp_lexer_next_token_is_keyword (int ,int ) ;
 scalar_t__ cp_lexer_next_token_is_not (int ,scalar_t__) ;
 TYPE_9__* cp_lexer_peek_nth_token (int ,int) ;
 int cp_parser_error (TYPE_1__*,char*) ;
 int cp_parser_global_scope_opt (TYPE_1__*,int) ;
 scalar_t__ cp_parser_nested_name_specifier_opt (TYPE_1__*,int,int,int,int) ;
 int cp_parser_require (TYPE_1__*,scalar_t__,char*) ;
 int cp_parser_template_id (TYPE_1__*,int,int,int) ;
 scalar_t__ cp_parser_type_name (TYPE_1__*) ;
 scalar_t__ error_mark_node ;

__attribute__((used)) static void
cp_parser_pseudo_destructor_name (cp_parser* parser,
      tree* scope,
      tree* type)
{
  bool nested_name_specifier_p;


  *type = error_mark_node;


  cp_parser_global_scope_opt (parser, 1);

  nested_name_specifier_p
    = (cp_parser_nested_name_specifier_opt (parser,
                                0,
                                1,
                    0,
                            1)
       != NULL_TREE);


  if (nested_name_specifier_p
      && cp_lexer_next_token_is_keyword (parser->lexer, RID_TEMPLATE))
    {

      cp_lexer_consume_token (parser->lexer);

      cp_parser_template_id (parser,
                               1,
                               0,
                           1);

      cp_parser_require (parser, CPP_SCOPE, "`::'");
    }


  else if (cp_lexer_next_token_is_not (parser->lexer, CPP_COMPL))
    {

      *scope = TREE_TYPE (cp_parser_type_name (parser));

      if (*scope == error_mark_node)
 return;






      if (cp_lexer_next_token_is_not (parser->lexer, CPP_SCOPE)
   || cp_lexer_peek_nth_token (parser->lexer, 2)->type != CPP_COMPL)
 {
   cp_parser_error (parser, "request for member of non-aggregate type");
   return;
 }


      cp_parser_require (parser, CPP_SCOPE, "`::'");
    }
  else
    *scope = NULL_TREE;


  cp_parser_require (parser, CPP_COMPL, "`~'");


  *type = cp_parser_type_name (parser);
}
