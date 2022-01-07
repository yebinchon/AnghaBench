
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_19__ {scalar_t__ type; } ;
typedef TYPE_1__ cp_token ;
struct TYPE_20__ {int lexer; } ;
typedef TYPE_2__ cp_parser ;
struct TYPE_21__ {scalar_t__ any_specifiers_p; int type; } ;
typedef TYPE_3__ cp_decl_specifier_seq ;


 scalar_t__ CPP_COMMA ;
 scalar_t__ CPP_OPEN_PAREN ;
 scalar_t__ CPP_SEMICOLON ;
 int CP_PARSER_FLAGS_OPTIONAL ;
 int cp_lexer_consume_token (int ) ;
 scalar_t__ cp_lexer_next_token_is (int ,scalar_t__) ;
 scalar_t__ cp_lexer_next_token_is_not (int ,scalar_t__) ;
 TYPE_1__* cp_lexer_peek_token (int ) ;
 int cp_parser_commit_to_tentative_parse (TYPE_2__*) ;
 int cp_parser_decl_specifier_seq (TYPE_2__*,int ,TYPE_3__*,int*) ;
 scalar_t__ cp_parser_declares_only_class_p (TYPE_2__*) ;
 int cp_parser_error (TYPE_2__*,char*) ;
 scalar_t__ cp_parser_error_occurred (TYPE_2__*) ;
 scalar_t__ cp_parser_init_declarator (TYPE_2__*,TYPE_3__*,int *,int,int,int,int*) ;
 scalar_t__ cp_parser_parse_and_diagnose_invalid_type_name (TYPE_2__*) ;
 int cp_parser_require (TYPE_2__*,scalar_t__,char*) ;
 int cp_parser_skip_to_end_of_statement (TYPE_2__*) ;
 scalar_t__ cp_parser_uncommitted_to_tentative_parse_p (TYPE_2__*) ;
 int dk_deferred ;
 int error (char*) ;
 scalar_t__ error_mark_node ;
 int gcc_assert (int) ;
 int perform_deferred_access_checks () ;
 int pop_deferring_access_checks () ;
 int push_deferring_access_checks (int ) ;
 int shadow_tag (TYPE_3__*) ;
 int stop_deferring_access_checks () ;

__attribute__((used)) static void
cp_parser_simple_declaration (cp_parser* parser,
         bool function_definition_allowed_p)
{
  cp_decl_specifier_seq decl_specifiers;
  int declares_class_or_enum;
  bool saw_declarator;




  push_deferring_access_checks (dk_deferred);
  cp_parser_decl_specifier_seq (parser,
    CP_PARSER_FLAGS_OPTIONAL,
    &decl_specifiers,
    &declares_class_or_enum);

  stop_deferring_access_checks ();




  if (!function_definition_allowed_p
      && !decl_specifiers.any_specifiers_p)
    {
      cp_parser_error (parser, "expected declaration");
      goto done;
    }







  if (!decl_specifiers.type
      && cp_parser_parse_and_diagnose_invalid_type_name (parser))
    {


      cp_parser_commit_to_tentative_parse (parser);

      goto done;
    }




  if (decl_specifiers.any_specifiers_p
      && cp_lexer_next_token_is_not (parser->lexer, CPP_OPEN_PAREN))
    cp_parser_commit_to_tentative_parse (parser);



  saw_declarator = 0;
  while (cp_lexer_next_token_is_not (parser->lexer,
         CPP_SEMICOLON))
    {
      cp_token *token;
      bool function_definition_p;
      tree decl;

      if (saw_declarator)
 {

   token = cp_lexer_peek_token (parser->lexer);
   gcc_assert (token->type == CPP_COMMA);
   cp_lexer_consume_token (parser->lexer);
 }
      else
 saw_declarator = 1;


      decl = cp_parser_init_declarator (parser, &decl_specifiers,
                ((void*)0),
     function_definition_allowed_p,
                  0,
     declares_class_or_enum,
     &function_definition_p);




      if (cp_parser_error_occurred (parser))
 goto done;

      if (function_definition_p)
 {






   if (cp_lexer_next_token_is (parser->lexer, CPP_COMMA))
     error ("mixing declarations and function-definitions is forbidden");

   else
     {
       pop_deferring_access_checks ();
       return;
     }
 }

      token = cp_lexer_peek_token (parser->lexer);

      if (token->type == CPP_COMMA)
                                        ;

      else if (token->type == CPP_SEMICOLON)
 break;

      else
 {


   if (decl != error_mark_node
       || cp_parser_uncommitted_to_tentative_parse_p (parser))
     cp_parser_error (parser, "expected %<,%> or %<;%>");

   cp_parser_skip_to_end_of_statement (parser);

   if (cp_lexer_next_token_is (parser->lexer, CPP_SEMICOLON))
     cp_lexer_consume_token (parser->lexer);
   goto done;
 }






      function_definition_allowed_p = 0;
    }




  if (!saw_declarator)
    {
      if (cp_parser_declares_only_class_p (parser))
 shadow_tag (&decl_specifiers);

      perform_deferred_access_checks ();
    }


  cp_parser_require (parser, CPP_SEMICOLON, "`;'");

 done:
  pop_deferring_access_checks ();
}
