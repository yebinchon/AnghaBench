
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
typedef int c_parser ;
struct TYPE_2__ {scalar_t__ type; int keyword; } ;


 int CPP_COLON ;
 scalar_t__ CPP_KEYWORD ;
 int NULL_TREE ;




 int c_parser_consume_token (int *) ;
 int c_parser_error (int *,char*) ;
 int c_parser_next_token_is (int *,int ) ;
 int c_parser_objc_eq_identifier (int *) ;
 TYPE_1__* c_parser_peek_token (int *) ;
 int objc_set_property_attr (int,int ) ;

__attribute__((used)) static void
c_parser_objc_property_attribute (c_parser *parser)
{
  tree id;
  if (c_parser_peek_token (parser)->type != CPP_KEYWORD)
    {
      c_parser_error (parser, "expected a property attribute");
      c_parser_consume_token (parser);
      return;
    }
  switch (c_parser_peek_token (parser)->keyword)
    {
    case 129:
      c_parser_consume_token (parser);
      objc_set_property_attr (1, NULL_TREE);
      break;
    case 131:
      c_parser_consume_token (parser);
      id = c_parser_objc_eq_identifier (parser);
      if (id)
 objc_set_property_attr (2, id);
      break;
    case 128:
      c_parser_consume_token (parser);
      id = c_parser_objc_eq_identifier (parser);
      if (id)
 objc_set_property_attr (3, id);

      if (c_parser_next_token_is (parser, CPP_COLON))
 c_parser_consume_token (parser);
      break;

    case 130:
      c_parser_consume_token (parser);
      objc_set_property_attr (13, NULL_TREE);
      break;

    default:
      c_parser_error (parser, "expected a property attribute");
      c_parser_consume_token (parser);
    }
}
