
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int str; } ;
struct TYPE_12__ {TYPE_2__ val; } ;
typedef TYPE_3__ cpp_token ;
struct TYPE_10__ {int type; } ;
struct TYPE_13__ {TYPE_1__ directive_result; } ;
typedef TYPE_4__ cpp_reader ;


 int CPP_DL_ERROR ;
 int CPP_PADDING ;
 int cpp_error (TYPE_4__*,int ,char*) ;
 int destringize_and_run (TYPE_4__*,int *) ;
 TYPE_3__* get__Pragma_string (TYPE_4__*) ;

void
_cpp_do__Pragma (cpp_reader *pfile)
{
  const cpp_token *string = get__Pragma_string (pfile);
  pfile->directive_result.type = CPP_PADDING;

  if (string)
    destringize_and_run (pfile, &string->val.str);
  else
    cpp_error (pfile, CPP_DL_ERROR,
        "_Pragma takes a parenthesized string literal");
}
