
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; } ;
typedef TYPE_1__ cp_token ;


 scalar_t__ CPP_STRING ;
 scalar_t__ CPP_WSTRING ;

__attribute__((used)) static bool
cp_parser_is_string_literal (cp_token* token)
{
  return (token->type == CPP_STRING || token->type == CPP_WSTRING);
}
