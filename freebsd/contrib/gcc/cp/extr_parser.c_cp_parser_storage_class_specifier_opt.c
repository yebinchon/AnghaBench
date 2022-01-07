
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tree ;
struct TYPE_7__ {int lexer; } ;
typedef TYPE_2__ cp_parser ;
struct TYPE_6__ {int value; } ;
struct TYPE_9__ {TYPE_1__ u; } ;
struct TYPE_8__ {int keyword; } ;


 int NULL_TREE ;






 TYPE_5__* cp_lexer_consume_token (int ) ;
 TYPE_4__* cp_lexer_peek_token (int ) ;

__attribute__((used)) static tree
cp_parser_storage_class_specifier_opt (cp_parser* parser)
{
  switch (cp_lexer_peek_token (parser->lexer)->keyword)
    {
    case 133:
    case 130:
    case 129:
    case 132:
    case 131:
    case 128:

      return cp_lexer_consume_token (parser->lexer)->u.value;

    default:
      return NULL_TREE;
    }
}
