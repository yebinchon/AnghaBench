
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * tree ;
typedef int c_parser ;
struct TYPE_2__ {int * value; } ;


 int CPP_STRING ;
 int TREE_STRING_POINTER (int *) ;
 int c_common_pch_pragma (int ,int ) ;
 int c_parser_consume_pragma (int *) ;
 int c_parser_consume_token (int *) ;
 int c_parser_error (int *,char*) ;
 scalar_t__ c_parser_next_token_is (int *,int ) ;
 TYPE_1__* c_parser_peek_token (int *) ;
 int c_parser_skip_to_pragma_eol (int *) ;
 int parse_in ;

__attribute__((used)) static void
c_parser_pragma_pch_preprocess (c_parser *parser)
{
  tree name = ((void*)0);

  c_parser_consume_pragma (parser);
  if (c_parser_next_token_is (parser, CPP_STRING))
    {
      name = c_parser_peek_token (parser)->value;
      c_parser_consume_token (parser);
    }
  else
    c_parser_error (parser, "expected string literal");
  c_parser_skip_to_pragma_eol (parser);

  if (name)
    c_common_pch_pragma (parse_in, TREE_STRING_POINTER (name));
}
