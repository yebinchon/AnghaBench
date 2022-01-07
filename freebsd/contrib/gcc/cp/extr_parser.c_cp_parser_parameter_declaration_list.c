
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ type; } ;
typedef TYPE_1__ cp_token ;
struct TYPE_14__ {int in_unbraced_linkage_specification_p; int in_type_id_in_expr_p; int in_template_argument_list_p; int lexer; } ;
typedef TYPE_2__ cp_parser ;
struct TYPE_15__ {struct TYPE_15__* next; } ;
typedef TYPE_3__ cp_parameter_declarator ;


 scalar_t__ CPP_CLOSE_PAREN ;
 scalar_t__ CPP_COMMA ;
 scalar_t__ CPP_ELLIPSIS ;
 scalar_t__ CPP_OPEN_BRACE ;
 scalar_t__ CPP_SEMICOLON ;
 int cp_lexer_consume_token (int ) ;
 scalar_t__ cp_lexer_next_token_is (int ,scalar_t__) ;
 TYPE_1__* cp_lexer_peek_nth_token (int ,int) ;
 int cp_parser_commit_to_tentative_parse (TYPE_2__*) ;
 int cp_parser_error (TYPE_2__*,char*) ;
 TYPE_3__* cp_parser_parameter_declaration (TYPE_2__*,int,int*) ;
 int cp_parser_skip_to_closing_parenthesis (TYPE_2__*,int,int,int) ;
 scalar_t__ cp_parser_uncommitted_to_tentative_parse_p (TYPE_2__*) ;

__attribute__((used)) static cp_parameter_declarator *
cp_parser_parameter_declaration_list (cp_parser* parser, bool *is_error)
{
  cp_parameter_declarator *parameters = ((void*)0);
  cp_parameter_declarator **tail = &parameters;
  bool saved_in_unbraced_linkage_specification_p;


  *is_error = 0;



  saved_in_unbraced_linkage_specification_p
    = parser->in_unbraced_linkage_specification_p;
  parser->in_unbraced_linkage_specification_p = 0;


  while (1)
    {
      cp_parameter_declarator *parameter;
      bool parenthesized_p;

      parameter
 = cp_parser_parameter_declaration (parser,
                            0,
        &parenthesized_p);



      if (!parameter)
 {
   *is_error = 1;
   parameters = ((void*)0);
   break;
 }

      *tail = parameter;
      tail = &parameter->next;


      if (cp_lexer_next_token_is (parser->lexer, CPP_CLOSE_PAREN)
   || cp_lexer_next_token_is (parser->lexer, CPP_ELLIPSIS)

   || cp_lexer_next_token_is (parser->lexer, CPP_SEMICOLON)
   || cp_lexer_next_token_is (parser->lexer, CPP_OPEN_BRACE))

 break;
      else if (cp_lexer_next_token_is (parser->lexer, CPP_COMMA))
 {
   cp_token *token;


   token = cp_lexer_peek_nth_token (parser->lexer, 2);

   if (token->type == CPP_ELLIPSIS)
     break;


   cp_lexer_consume_token (parser->lexer);
   if (!parser->in_template_argument_list_p
       && !parser->in_type_id_in_expr_p
       && cp_parser_uncommitted_to_tentative_parse_p (parser)




       && !parenthesized_p)
     cp_parser_commit_to_tentative_parse (parser);
 }
      else
 {
   cp_parser_error (parser, "expected %<,%> or %<...%>");
   if (!cp_parser_uncommitted_to_tentative_parse_p (parser))
     cp_parser_skip_to_closing_parenthesis (parser,
                        1,
                      0,
                           0);
   break;
 }
    }

  parser->in_unbraced_linkage_specification_p
    = saved_in_unbraced_linkage_specification_p;

  return parameters;
}
