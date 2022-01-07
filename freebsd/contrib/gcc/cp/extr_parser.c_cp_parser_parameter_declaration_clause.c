
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


struct TYPE_13__ {scalar_t__ type; scalar_t__ keyword; } ;
typedef TYPE_1__ cp_token ;
struct TYPE_14__ {int lexer; } ;
typedef TYPE_2__ cp_parser ;
struct TYPE_15__ {int ellipsis_p; } ;
typedef TYPE_3__ cp_parameter_declarator ;
struct TYPE_12__ {scalar_t__ type; } ;


 scalar_t__ CPP_CLOSE_PAREN ;
 scalar_t__ CPP_COMMA ;
 scalar_t__ CPP_ELLIPSIS ;
 scalar_t__ RID_VOID ;
 int cp_lexer_consume_token (int ) ;
 TYPE_11__* cp_lexer_peek_nth_token (int ,int) ;
 TYPE_1__* cp_lexer_peek_token (int ) ;
 TYPE_3__* cp_parser_parameter_declaration_list (TYPE_2__*,int*) ;
 int * cp_parser_require (TYPE_2__*,scalar_t__,char*) ;
 int * current_class_type ;
 scalar_t__ current_lang_name ;
 scalar_t__ in_system_header ;
 scalar_t__ lang_name_c ;
 TYPE_3__* no_parameters ;

__attribute__((used)) static cp_parameter_declarator *
cp_parser_parameter_declaration_clause (cp_parser* parser)
{
  cp_parameter_declarator *parameters;
  cp_token *token;
  bool ellipsis_p;
  bool is_error;


  token = cp_lexer_peek_token (parser->lexer);

  if (token->type == CPP_ELLIPSIS)
    {

      cp_lexer_consume_token (parser->lexer);
      return ((void*)0);
    }
  else if (token->type == CPP_CLOSE_PAREN)

    {

      if (in_system_header && current_class_type == ((void*)0)
   && current_lang_name == lang_name_c)
 return ((void*)0);
      else

 return no_parameters;
    }

  else if (token->keyword == RID_VOID
    && (cp_lexer_peek_nth_token (parser->lexer, 2)->type
        == CPP_CLOSE_PAREN))
    {

      cp_lexer_consume_token (parser->lexer);

      return no_parameters;
    }


  parameters = cp_parser_parameter_declaration_list (parser, &is_error);



  if (is_error)
    return ((void*)0);


  token = cp_lexer_peek_token (parser->lexer);

  if (token->type == CPP_COMMA)
    {

      cp_lexer_consume_token (parser->lexer);

      ellipsis_p
 = (cp_parser_require (parser, CPP_ELLIPSIS, "`...'") != ((void*)0));
    }


  else if (token->type == CPP_ELLIPSIS)
    {

      cp_lexer_consume_token (parser->lexer);

      ellipsis_p = 1;
    }
  else
    ellipsis_p = 0;


  if (parameters && ellipsis_p)
    parameters->ellipsis_p = 1;

  return parameters;
}
