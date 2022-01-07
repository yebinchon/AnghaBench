
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int * tree ;
struct TYPE_5__ {int * value; } ;
struct TYPE_6__ {scalar_t__ pragma_kind; scalar_t__ type; TYPE_1__ u; } ;
typedef TYPE_2__ cp_token ;


 scalar_t__ CPP_EOF ;
 scalar_t__ CPP_PRAGMA_EOL ;
 scalar_t__ CPP_STRING ;
 scalar_t__ PRAGMA_GCC_PCH_PREPROCESS ;
 int TREE_STRING_POINTER (int *) ;
 int c_common_pch_pragma (int ,int ) ;
 int cp_lexer_get_preprocessor_token (int *,TYPE_2__*) ;
 int error (char*) ;
 int parse_in ;

__attribute__((used)) static void
cp_parser_initial_pragma (cp_token *first_token)
{
  tree name = ((void*)0);

  cp_lexer_get_preprocessor_token (((void*)0), first_token);
  if (first_token->pragma_kind != PRAGMA_GCC_PCH_PREPROCESS)
    return;

  cp_lexer_get_preprocessor_token (((void*)0), first_token);
  if (first_token->type == CPP_STRING)
    {
      name = first_token->u.value;

      cp_lexer_get_preprocessor_token (((void*)0), first_token);
      if (first_token->type != CPP_PRAGMA_EOL)
 error ("junk at end of %<#pragma GCC pch_preprocess%>");
    }
  else
    error ("expected string literal");


  while (first_token->type != CPP_PRAGMA_EOL && first_token->type != CPP_EOF)
    cp_lexer_get_preprocessor_token (((void*)0), first_token);


  if (name)
    c_common_pch_pragma (parse_in, TREE_STRING_POINTER (name));




  cp_lexer_get_preprocessor_token (((void*)0), first_token);
}
