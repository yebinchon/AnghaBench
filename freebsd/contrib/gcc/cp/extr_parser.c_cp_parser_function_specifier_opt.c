
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int tree ;
struct TYPE_9__ {int lexer; } ;
typedef TYPE_2__ cp_parser ;
struct TYPE_10__ {int * specs; } ;
typedef TYPE_3__ cp_decl_specifier_seq ;
struct TYPE_8__ {int value; } ;
struct TYPE_12__ {TYPE_1__ u; } ;
struct TYPE_11__ {int keyword; } ;


 int NULL_TREE ;
 int PROCESSING_REAL_TEMPLATE_DECL_P () ;



 TYPE_7__* cp_lexer_consume_token (int ) ;
 TYPE_6__* cp_lexer_peek_token (int ) ;
 scalar_t__ ds_explicit ;
 scalar_t__ ds_inline ;
 scalar_t__ ds_virtual ;
 int error (char*) ;

__attribute__((used)) static tree
cp_parser_function_specifier_opt (cp_parser* parser,
      cp_decl_specifier_seq *decl_specs)
{
  switch (cp_lexer_peek_token (parser->lexer)->keyword)
    {
    case 129:
      if (decl_specs)
 ++decl_specs->specs[(int) ds_inline];
      break;

    case 128:



      if (PROCESSING_REAL_TEMPLATE_DECL_P ())
 error ("templates may not be %<virtual%>");
      else if (decl_specs)
 ++decl_specs->specs[(int) ds_virtual];
      break;

    case 130:
      if (decl_specs)
 ++decl_specs->specs[(int) ds_explicit];
      break;

    default:
      return NULL_TREE;
    }


  return cp_lexer_consume_token (parser->lexer)->u.value;
}
