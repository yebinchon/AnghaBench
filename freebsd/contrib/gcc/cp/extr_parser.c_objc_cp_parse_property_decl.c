
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_6__ {scalar_t__ type; } ;
typedef TYPE_1__ cp_token ;
struct TYPE_7__ {int lexer; } ;
typedef TYPE_2__ cp_parser ;
typedef int cp_declarator ;
typedef int cp_decl_specifier_seq ;


 scalar_t__ CPP_COMMA ;
 scalar_t__ CPP_EOF ;
 int CPP_SEMICOLON ;
 int CP_PARSER_DECLARATOR_NAMED ;
 int CP_PARSER_FLAGS_NONE ;
 int NORMAL ;
 scalar_t__ NULL_TREE ;
 int copy_node (scalar_t__) ;
 int cp_lexer_consume_token (int ) ;
 scalar_t__ cp_lexer_next_token_is_not (int ,int ) ;
 int cp_parser_decl_specifier_seq (TYPE_2__*,int ,int *,int*) ;
 int * cp_parser_declarator (TYPE_2__*,int ,int *,int *,int) ;
 scalar_t__ error_mark_node ;
 scalar_t__ grokdeclarator (int *,int *,int ,int ,int *) ;
 int objc_add_property_variable (int ) ;

__attribute__((used)) static void
objc_cp_parse_property_decl (cp_parser *parser)
{
  int declares_class_or_enum;
  cp_decl_specifier_seq declspecs;

  cp_parser_decl_specifier_seq (parser,
        CP_PARSER_FLAGS_NONE,
        &declspecs,
        &declares_class_or_enum);

  while (cp_lexer_next_token_is_not (parser->lexer, CPP_SEMICOLON))
    {
      tree property;
      cp_token *token;
      cp_declarator *declarator
      = cp_parser_declarator (parser, CP_PARSER_DECLARATOR_NAMED,
      ((void*)0), ((void*)0), 0);
      property = grokdeclarator (declarator, &declspecs, NORMAL,0, ((void*)0));

      if (property == error_mark_node || property == NULL_TREE)
 return;

      objc_add_property_variable (copy_node (property));
      if (token->type == CPP_COMMA)
      {
 cp_lexer_consume_token (parser->lexer);
 continue;
      }
      else if (token->type == CPP_EOF)
 return;
    }
    cp_lexer_consume_token (parser->lexer);
}
