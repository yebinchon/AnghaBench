
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_6__ {int lexer; } ;
typedef TYPE_1__ cp_parser ;
typedef int cp_declarator ;


 int CPP_CLOSE_SQUARE ;
 int CPP_OPEN_SQUARE ;
 int WANT_ENUM ;
 int WANT_INT ;
 scalar_t__ build_expr_type_conversion (int,scalar_t__,int) ;
 scalar_t__ cp_lexer_next_token_is_not (int ,int ) ;
 scalar_t__ cp_parser_constant_expression (TYPE_1__*,int,int *) ;
 scalar_t__ cp_parser_expression (TYPE_1__*,int) ;
 int cp_parser_require (TYPE_1__*,int ,char*) ;
 int error (char*) ;
 scalar_t__ error_mark_node ;
 int * make_array_declarator (int *,scalar_t__) ;
 int processing_template_decl ;

__attribute__((used)) static cp_declarator *
cp_parser_direct_new_declarator (cp_parser* parser)
{
  cp_declarator *declarator = ((void*)0);

  while (1)
    {
      tree expression;


      cp_parser_require (parser, CPP_OPEN_SQUARE, "`['");

      if (!declarator)
 {
   expression = cp_parser_expression (parser, 0);






   if (!processing_template_decl)
     {
       expression
  = build_expr_type_conversion (WANT_INT | WANT_ENUM,
           expression,
                        1);
       if (!expression)
  {
    error ("expression in new-declarator must have integral "
    "or enumeration type");
    expression = error_mark_node;
  }
     }
 }

      else
 expression
   = cp_parser_constant_expression (parser,
                               0,
        ((void*)0));

      cp_parser_require (parser, CPP_CLOSE_SQUARE, "`]'");


      declarator = make_array_declarator (declarator, expression);



      if (cp_lexer_next_token_is_not (parser->lexer, CPP_OPEN_SQUARE))
 break;
    }

  return declarator;
}
