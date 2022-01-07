
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_8__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int num_template_parameter_lists; int lexer; } ;
typedef TYPE_1__ cp_parser ;
struct TYPE_10__ {scalar_t__ type; } ;


 scalar_t__ CPP_GREATER ;
 scalar_t__ CPP_LESS ;
 int RID_TEMPLATE ;
 int begin_specialization () ;
 scalar_t__ cp_lexer_next_token_is_keyword (int ,int ) ;
 TYPE_8__* cp_lexer_peek_nth_token (int ,int) ;
 int cp_parser_require (TYPE_1__*,scalar_t__,char*) ;
 int cp_parser_require_keyword (TYPE_1__*,int ,char*) ;
 int cp_parser_single_declaration (TYPE_1__*,int *,int,int *) ;
 int cp_parser_skip_to_end_of_block_or_statement (TYPE_1__*) ;
 int cp_parser_template_declaration_after_export (TYPE_1__*,int) ;
 scalar_t__ current_lang_name ;
 int end_specialization () ;
 int error (char*) ;
 scalar_t__ lang_name_c ;
 int lang_name_cplusplus ;
 int pop_lang_context () ;
 int push_lang_context (int ) ;

__attribute__((used)) static void
cp_parser_explicit_specialization (cp_parser* parser)
{
  bool need_lang_pop;

  cp_parser_require_keyword (parser, RID_TEMPLATE, "`template'");

  cp_parser_require (parser, CPP_LESS, "`<'");

  cp_parser_require (parser, CPP_GREATER, "`>'");

  ++parser->num_template_parameter_lists;




  if (current_lang_name == lang_name_c)
    {
      error ("template specialization with C linkage");


      push_lang_context (lang_name_cplusplus);
      need_lang_pop = 1;
    }
  else
    need_lang_pop = 0;

  if (!begin_specialization ())
    {
      end_specialization ();
      cp_parser_skip_to_end_of_block_or_statement (parser);
      return;
    }



  if (cp_lexer_next_token_is_keyword (parser->lexer, RID_TEMPLATE))
    {
      if (cp_lexer_peek_nth_token (parser->lexer, 2)->type == CPP_LESS
   && cp_lexer_peek_nth_token (parser->lexer, 3)->type != CPP_GREATER)
 cp_parser_template_declaration_after_export (parser,
                        0);
      else
 cp_parser_explicit_specialization (parser);
    }
  else

    cp_parser_single_declaration (parser,
                 ((void*)0),
                   0,
                   ((void*)0));

  end_specialization ();


  if (need_lang_pop)
    pop_lang_context ();

  --parser->num_template_parameter_lists;
}
