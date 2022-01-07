
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tree ;
struct TYPE_4__ {int lexer; } ;
typedef TYPE_1__ cp_parser ;
struct TYPE_5__ {scalar_t__ type; } ;


 scalar_t__ CPP_DOT ;
 scalar_t__ c_dialect_objc () ;
 TYPE_3__* cp_lexer_peek_token (int ) ;
 scalar_t__ objc_is_class_name (int ) ;
 scalar_t__ objc_is_id (int ) ;

__attribute__((used)) static bool
cp_objc_property_reference_prefix (cp_parser *parser, tree type)
{
  return c_dialect_objc () && cp_lexer_peek_token (parser->lexer)->type == CPP_DOT
  && (objc_is_id (type) || objc_is_class_name (type));
}
