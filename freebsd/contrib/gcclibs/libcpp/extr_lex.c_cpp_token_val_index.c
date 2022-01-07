
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef enum cpp_token_fld_kind { ____Placeholder_cpp_token_fld_kind } cpp_token_fld_kind ;
struct TYPE_4__ {int type; } ;
typedef TYPE_1__ cpp_token ;


 int CPP_MACRO_ARG ;
 int CPP_PADDING ;
 int CPP_PRAGMA ;
 int CPP_TOKEN_FLD_ARG_NO ;
 int CPP_TOKEN_FLD_NODE ;
 int CPP_TOKEN_FLD_NONE ;
 int CPP_TOKEN_FLD_PRAGMA ;
 int CPP_TOKEN_FLD_SOURCE ;
 int CPP_TOKEN_FLD_STR ;



 int TOKEN_SPELL (TYPE_1__*) ;

enum cpp_token_fld_kind
cpp_token_val_index (cpp_token *tok)
{
  switch (TOKEN_SPELL (tok))
    {
    case 130:
      return CPP_TOKEN_FLD_NODE;
    case 129:
      return CPP_TOKEN_FLD_STR;
    case 128:
      if (tok->type == CPP_MACRO_ARG)
 return CPP_TOKEN_FLD_ARG_NO;
      else if (tok->type == CPP_PADDING)
 return CPP_TOKEN_FLD_SOURCE;
      else if (tok->type == CPP_PRAGMA)
 return CPP_TOKEN_FLD_PRAGMA;

    default:
      return CPP_TOKEN_FLD_NONE;
    }
}
