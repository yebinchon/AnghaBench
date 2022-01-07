
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; } ;
typedef TYPE_1__ cpp_token ;
typedef int cpp_reader ;


 scalar_t__ CPP_CLOSE_PAREN ;
 scalar_t__ CPP_OPEN_PAREN ;
 scalar_t__ CPP_STRING ;
 scalar_t__ CPP_WSTRING ;
 TYPE_1__* get_token_no_padding (int *) ;

__attribute__((used)) static const cpp_token *
get__Pragma_string (cpp_reader *pfile)
{
  const cpp_token *string;

  if (get_token_no_padding (pfile)->type != CPP_OPEN_PAREN)
    return ((void*)0);

  string = get_token_no_padding (pfile);
  if (string->type != CPP_STRING && string->type != CPP_WSTRING)
    return ((void*)0);

  if (get_token_no_padding (pfile)->type != CPP_CLOSE_PAREN)
    return ((void*)0);

  return string;
}
