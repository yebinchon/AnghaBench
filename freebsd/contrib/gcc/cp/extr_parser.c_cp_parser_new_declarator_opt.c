
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
struct TYPE_7__ {int lexer; } ;
typedef TYPE_1__ cp_parser ;
typedef int cp_declarator ;
typedef int cp_cv_quals ;


 int CPP_OPEN_SQUARE ;
 int INDIRECT_REF ;
 scalar_t__ cp_lexer_next_token_is (int ,int ) ;
 int * cp_parser_direct_new_declarator (TYPE_1__*) ;
 scalar_t__ cp_parser_parse_definitely (TYPE_1__*) ;
 int cp_parser_parse_tentatively (TYPE_1__*) ;
 int cp_parser_ptr_operator (TYPE_1__*,scalar_t__*,int *) ;
 int * make_pointer_declarator (int ,int *) ;
 int * make_ptrmem_declarator (int ,scalar_t__,int *) ;
 int * make_reference_declarator (int ,int *) ;

__attribute__((used)) static cp_declarator *
cp_parser_new_declarator_opt (cp_parser* parser)
{
  enum tree_code code;
  tree type;
  cp_cv_quals cv_quals;


  cp_parser_parse_tentatively (parser);

  code = cp_parser_ptr_operator (parser, &type, &cv_quals);

  if (cp_parser_parse_definitely (parser))
    {
      cp_declarator *declarator;


      declarator = cp_parser_new_declarator_opt (parser);


      if (type)
 declarator = make_ptrmem_declarator (cv_quals, type, declarator);
      else if (code == INDIRECT_REF)
 declarator = make_pointer_declarator (cv_quals, declarator);
      else
 declarator = make_reference_declarator (cv_quals, declarator);

      return declarator;
    }


  if (cp_lexer_next_token_is (parser->lexer, CPP_OPEN_SQUARE))
    return cp_parser_direct_new_declarator (parser);

  return ((void*)0);
}
