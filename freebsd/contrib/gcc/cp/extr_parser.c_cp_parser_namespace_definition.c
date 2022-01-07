
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int tree ;
struct TYPE_8__ {int lexer; } ;
typedef TYPE_1__ cp_parser ;


 int CPP_CLOSE_BRACE ;
 int CPP_NAME ;
 int CPP_OPEN_BRACE ;
 int NULL_TREE ;
 int RID_NAMESPACE ;
 scalar_t__ cp_lexer_next_token_is (int ,int ) ;
 int cp_parser_attributes_opt (TYPE_1__*) ;
 int cp_parser_identifier (TYPE_1__*) ;
 int cp_parser_namespace_body (TYPE_1__*) ;
 int cp_parser_require (TYPE_1__*,int ,char*) ;
 int cp_parser_require_keyword (TYPE_1__*,int ,char*) ;
 int pop_namespace () ;
 int push_namespace_with_attribs (int ,int ) ;

__attribute__((used)) static void
cp_parser_namespace_definition (cp_parser* parser)
{
  tree identifier, attribs;


  cp_parser_require_keyword (parser, RID_NAMESPACE, "`namespace'");





  if (cp_lexer_next_token_is (parser->lexer, CPP_NAME))
    identifier = cp_parser_identifier (parser);
  else
    identifier = NULL_TREE;


  attribs = cp_parser_attributes_opt (parser);


  cp_parser_require (parser, CPP_OPEN_BRACE, "`{'");

  push_namespace_with_attribs (identifier, attribs);

  cp_parser_namespace_body (parser);

  pop_namespace ();

  cp_parser_require (parser, CPP_CLOSE_BRACE, "`}'");
}
