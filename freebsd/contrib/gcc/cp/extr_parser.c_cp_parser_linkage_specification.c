
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int tree ;
struct TYPE_9__ {int in_unbraced_linkage_specification_p; int lexer; } ;
typedef TYPE_1__ cp_parser ;


 int CPP_CLOSE_BRACE ;
 int CPP_OPEN_BRACE ;
 int RID_EXTERN ;
 int TREE_STRING_LENGTH (int ) ;
 int TREE_STRING_POINTER (int ) ;
 int cp_lexer_consume_token (int ) ;
 scalar_t__ cp_lexer_next_token_is (int ,int ) ;
 int cp_parser_declaration (TYPE_1__*) ;
 int cp_parser_declaration_seq_opt (TYPE_1__*) ;
 int cp_parser_error (TYPE_1__*,char*) ;
 int cp_parser_require (TYPE_1__*,int ,char*) ;
 int cp_parser_require_keyword (TYPE_1__*,int ,char*) ;
 int cp_parser_string_literal (TYPE_1__*,int,int) ;
 int get_identifier (int ) ;
 int lang_name_cplusplus ;
 int pop_lang_context () ;
 int push_lang_context (int ) ;
 size_t strlen (int ) ;

__attribute__((used)) static void
cp_parser_linkage_specification (cp_parser* parser)
{
  tree linkage;


  cp_parser_require_keyword (parser, RID_EXTERN, "`extern'");


  linkage = cp_parser_string_literal (parser, 0, 0);




  if (strlen (TREE_STRING_POINTER (linkage))
      != (size_t) (TREE_STRING_LENGTH (linkage) - 1))
    {
      cp_parser_error (parser, "invalid linkage-specification");

      linkage = lang_name_cplusplus;
    }
  else
    linkage = get_identifier (TREE_STRING_POINTER (linkage));


  push_lang_context (linkage);



  if (cp_lexer_next_token_is (parser->lexer, CPP_OPEN_BRACE))
    {

      cp_lexer_consume_token (parser->lexer);

      cp_parser_declaration_seq_opt (parser);

      cp_parser_require (parser, CPP_CLOSE_BRACE, "`}'");
    }

  else
    {
      bool saved_in_unbraced_linkage_specification_p;

      saved_in_unbraced_linkage_specification_p
 = parser->in_unbraced_linkage_specification_p;
      parser->in_unbraced_linkage_specification_p = 1;
      cp_parser_declaration (parser);
      parser->in_unbraced_linkage_specification_p
 = saved_in_unbraced_linkage_specification_p;
    }


  pop_lang_context ();
}
