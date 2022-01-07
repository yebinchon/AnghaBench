
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int cppchar_t ;
struct TYPE_12__ {size_t len; scalar_t__ text; } ;
struct TYPE_9__ {TYPE_6__ str; } ;
struct TYPE_10__ {scalar_t__ type; TYPE_1__ val; } ;
typedef TYPE_2__ cpp_token ;
struct TYPE_11__ {scalar_t__ text; int member_1; int member_0; } ;
typedef TYPE_3__ cpp_string ;
typedef int cpp_reader ;


 int CPP_DL_ERROR ;
 scalar_t__ CPP_WCHAR ;
 int cpp_error (int *,int ,char*) ;
 int cpp_interpret_string (int *,TYPE_6__*,int,TYPE_3__*,int) ;
 int free (void*) ;
 int narrow_str_to_charconst (int *,TYPE_3__,unsigned int*,int*) ;
 int wide_str_to_charconst (int *,TYPE_3__,unsigned int*,int*) ;

cppchar_t
cpp_interpret_charconst (cpp_reader *pfile, const cpp_token *token,
    unsigned int *pchars_seen, int *unsignedp)
{
  cpp_string str = { 0, 0 };
  bool wide = (token->type == CPP_WCHAR);
  cppchar_t result;


  if (token->val.str.len == (size_t) (2 + wide))
    {
      cpp_error (pfile, CPP_DL_ERROR, "empty character constant");
      return 0;
    }
  else if (!cpp_interpret_string (pfile, &token->val.str, 1, &str, wide))
    return 0;

  if (wide)
    result = wide_str_to_charconst (pfile, str, pchars_seen, unsignedp);
  else
    result = narrow_str_to_charconst (pfile, str, pchars_seen, unsignedp);

  if (str.text != token->val.str.text)
    free ((void *)str.text);

  return result;
}
