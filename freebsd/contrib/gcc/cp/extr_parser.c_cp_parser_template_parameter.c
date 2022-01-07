
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_10__ {scalar_t__ keyword; scalar_t__ type; } ;
typedef TYPE_1__ cp_token ;
struct TYPE_11__ {int lexer; } ;
typedef TYPE_2__ cp_parser ;
struct TYPE_12__ {int default_argument; int decl_specifiers; int declarator; } ;
typedef TYPE_3__ cp_parameter_declarator ;


 scalar_t__ CPP_COMMA ;
 scalar_t__ CPP_EQ ;
 scalar_t__ CPP_GREATER ;
 scalar_t__ CPP_NAME ;
 int PARM ;
 scalar_t__ RID_CLASS ;
 scalar_t__ RID_TEMPLATE ;
 scalar_t__ RID_TYPENAME ;
 scalar_t__ build_tree_list (int ,scalar_t__) ;
 TYPE_1__* cp_lexer_peek_nth_token (int ,int) ;
 TYPE_1__* cp_lexer_peek_token (int ) ;
 TYPE_3__* cp_parser_parameter_declaration (TYPE_2__*,int,int *) ;
 scalar_t__ cp_parser_type_parameter (TYPE_2__*) ;
 scalar_t__ error_mark_node ;
 scalar_t__ grokdeclarator (int ,int *,int ,int ,int *) ;

__attribute__((used)) static tree
cp_parser_template_parameter (cp_parser* parser, bool *is_non_type)
{
  cp_token *token;
  cp_parameter_declarator *parameter_declarator;
  tree parm;


  *is_non_type = 0;

  token = cp_lexer_peek_token (parser->lexer);

  if (token->keyword == RID_TEMPLATE)
    return cp_parser_type_parameter (parser);
  if (token->keyword == RID_TYPENAME || token->keyword == RID_CLASS)
    {

      token = cp_lexer_peek_nth_token (parser->lexer, 2);

      if (token->type == CPP_NAME)
 token = cp_lexer_peek_nth_token (parser->lexer, 3);


      if (token->type == CPP_COMMA
   || token->type == CPP_EQ
   || token->type == CPP_GREATER)
 return cp_parser_type_parameter (parser);
    }
  *is_non_type = 1;
  parameter_declarator
     = cp_parser_parameter_declaration (parser, 1,
                         ((void*)0));
  parm = grokdeclarator (parameter_declarator->declarator,
    &parameter_declarator->decl_specifiers,
    PARM, 0,
                 ((void*)0));
  if (parm == error_mark_node)
    return error_mark_node;
  return build_tree_list (parameter_declarator->default_argument, parm);
}
