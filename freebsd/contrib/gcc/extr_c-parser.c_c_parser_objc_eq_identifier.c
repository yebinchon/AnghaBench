
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
typedef int c_parser ;
struct TYPE_2__ {int value; } ;


 int CPP_EQ ;
 int CPP_NAME ;
 int NULL_TREE ;
 int c_parser_consume_token (int *) ;
 int c_parser_error (int *,char*) ;
 scalar_t__ c_parser_next_token_is_not (int *,int ) ;
 TYPE_1__* c_parser_peek_token (int *) ;

__attribute__((used)) static tree
c_parser_objc_eq_identifier (c_parser *parser)
{
  tree id;
  if (c_parser_next_token_is_not (parser, CPP_EQ))
    {
      c_parser_error (parser, "expected %<=%>");
      return NULL_TREE;
    }

  c_parser_consume_token (parser);
  if (c_parser_next_token_is_not (parser, CPP_NAME))
    {
      c_parser_error (parser, "expected identifier");
      return NULL_TREE;
    }
  id = c_parser_peek_token (parser)->value;
  c_parser_consume_token (parser);
  return id;
}
