
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int tree ;
struct TYPE_9__ {scalar_t__ type; int keyword; } ;
typedef TYPE_1__ cp_token ;
struct TYPE_10__ {int in_switch_statement_p; int lexer; } ;
typedef TYPE_2__ cp_parser ;


 int CPP_COLON ;
 scalar_t__ CPP_ELLIPSIS ;
 scalar_t__ CPP_KEYWORD ;
 scalar_t__ CPP_NAME ;
 int NULL_TREE ;


 int cp_lexer_consume_token (int ) ;
 TYPE_1__* cp_lexer_peek_token (int ) ;
 int cp_parser_constant_expression (TYPE_2__*,int,int *) ;
 int cp_parser_error (TYPE_2__*,char*) ;
 int cp_parser_identifier (TYPE_2__*) ;
 int cp_parser_require (TYPE_2__*,int ,char*) ;
 int error (char*,...) ;
 int finish_case_label (int ,int ) ;
 int finish_label_stmt (int ) ;

__attribute__((used)) static void
cp_parser_label_for_labeled_statement (cp_parser* parser)
{
  cp_token *token;


  token = cp_lexer_peek_token (parser->lexer);
  if (token->type != CPP_NAME
      && token->type != CPP_KEYWORD)
    {
      cp_parser_error (parser, "expected labeled-statement");
      return;
    }

  switch (token->keyword)
    {
    case 129:
      {
 tree expr, expr_hi;
 cp_token *ellipsis;


 cp_lexer_consume_token (parser->lexer);

 expr = cp_parser_constant_expression (parser,
                                    0,
           ((void*)0));

 ellipsis = cp_lexer_peek_token (parser->lexer);
 if (ellipsis->type == CPP_ELLIPSIS)
   {

     cp_lexer_consume_token (parser->lexer);
     expr_hi =
       cp_parser_constant_expression (parser,
                                   0,
          ((void*)0));


   }
 else
   expr_hi = NULL_TREE;

 if (parser->in_switch_statement_p)
   finish_case_label (expr, expr_hi);
 else
   error ("case label %qE not within a switch statement", expr);
      }
      break;

    case 128:

      cp_lexer_consume_token (parser->lexer);

      if (parser->in_switch_statement_p)
 finish_case_label (NULL_TREE, NULL_TREE);
      else
 error ("case label not within a switch statement");
      break;

    default:

      finish_label_stmt (cp_parser_identifier (parser));
      break;
    }


  cp_parser_require (parser, CPP_COLON, "`:'");
}
