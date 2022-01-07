
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_5__ {int lexer; } ;
typedef TYPE_1__ cp_parser ;


 int CPP_EQ ;
 scalar_t__ NULL_TREE ;
 int build_enumerator (scalar_t__,scalar_t__,scalar_t__) ;
 int cp_lexer_consume_token (int ) ;
 scalar_t__ cp_lexer_next_token_is (int ,int ) ;
 scalar_t__ cp_parser_constant_expression (TYPE_1__*,int,int *) ;
 scalar_t__ cp_parser_identifier (TYPE_1__*) ;
 scalar_t__ error_mark_node ;

__attribute__((used)) static void
cp_parser_enumerator_definition (cp_parser* parser, tree type)
{
  tree identifier;
  tree value;


  identifier = cp_parser_identifier (parser);
  if (identifier == error_mark_node)
    return;


  if (cp_lexer_next_token_is (parser->lexer, CPP_EQ))
    {

      cp_lexer_consume_token (parser->lexer);

      value = cp_parser_constant_expression (parser,
                                   0,
          ((void*)0));
    }
  else
    value = NULL_TREE;


  build_enumerator (identifier, value, type);
}
