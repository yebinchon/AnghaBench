
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int implicit_extern_c; int * lexer; } ;
typedef TYPE_1__ cp_parser ;


 int CPP_EOF ;
 int NULL_TREE ;
 int cdk_error ;
 scalar_t__ cp_error_declarator ;
 int cp_lexer_destroy (int *) ;
 scalar_t__ cp_lexer_next_token_is (int *,int ) ;
 int cp_parser_declaration_seq_opt (TYPE_1__*) ;
 int cp_parser_error (TYPE_1__*,char*) ;
 int declarator_obstack ;
 int finish_translation_unit () ;
 int gcc_assert (int) ;
 int gcc_obstack_init (int *) ;
 scalar_t__ make_declarator (int ) ;
 int make_parameter_declarator (int *,int *,int ) ;
 int no_parameters ;
 void* obstack_next_free (int *) ;
 int pop_lang_context () ;

__attribute__((used)) static bool
cp_parser_translation_unit (cp_parser* parser)
{


  static void *declarator_obstack_base;

  bool success;


  if (!cp_error_declarator)
    {
      gcc_obstack_init (&declarator_obstack);

      cp_error_declarator = make_declarator (cdk_error);

      no_parameters = make_parameter_declarator (((void*)0), ((void*)0), NULL_TREE);

      declarator_obstack_base = obstack_next_free (&declarator_obstack);
    }

  cp_parser_declaration_seq_opt (parser);


  if (cp_lexer_next_token_is (parser->lexer, CPP_EOF))
    {

      cp_lexer_destroy (parser->lexer);
      parser->lexer = ((void*)0);



      if (parser->implicit_extern_c)
 {
   pop_lang_context ();
   parser->implicit_extern_c = 0;
 }


      finish_translation_unit ();

      success = 1;
    }
  else
    {
      cp_parser_error (parser, "expected declaration");
      success = 0;
    }


  gcc_assert (obstack_next_free (&declarator_obstack)
       == declarator_obstack_base);


  return success;
}
