
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef int c_parser ;
struct TYPE_4__ {int value; } ;
struct TYPE_3__ {scalar_t__ type; scalar_t__ id_kind; int value; } ;


 scalar_t__ CPP_NAME ;
 scalar_t__ C_ID_CLASSNAME ;
 scalar_t__ C_ID_TYPENAME ;
 int c_parser_consume_token (int *) ;
 TYPE_2__ c_parser_expression (int *) ;
 TYPE_1__* c_parser_peek_token (int *) ;
 int objc_get_class_reference (int ) ;

__attribute__((used)) static tree
c_parser_objc_receiver (c_parser *parser)
{
  if (c_parser_peek_token (parser)->type == CPP_NAME
      && (c_parser_peek_token (parser)->id_kind == C_ID_TYPENAME
   || c_parser_peek_token (parser)->id_kind == C_ID_CLASSNAME))
    {
      tree id = c_parser_peek_token (parser)->value;
      c_parser_consume_token (parser);
      return objc_get_class_reference (id);
    }
  return c_parser_expression (parser).value;
}
