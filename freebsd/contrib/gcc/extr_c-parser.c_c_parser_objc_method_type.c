
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef int c_parser ;
struct TYPE_2__ {int type; } ;




 int MINUS_EXPR ;
 int PLUS_EXPR ;
 int c_parser_consume_token (int *) ;
 TYPE_1__* c_parser_peek_token (int *) ;
 int gcc_unreachable () ;

__attribute__((used)) static enum tree_code
c_parser_objc_method_type (c_parser *parser)
{
  switch (c_parser_peek_token (parser)->type)
    {
    case 128:
      c_parser_consume_token (parser);
      return PLUS_EXPR;
    case 129:
      c_parser_consume_token (parser);
      return MINUS_EXPR;
    default:
      gcc_unreachable ();
    }
}
