
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ unsignedp; } ;
struct op {int token; TYPE_1__ value; } ;
typedef int cpp_reader ;


 int CPP_DL_WARNING ;
 int CPP_OPTION (int *,int ) ;
 int cpp_error (int *,int ,char*,int ) ;
 int cpp_token_as_text (int *,int ) ;
 int num_positive (TYPE_1__,int ) ;
 int precision ;

__attribute__((used)) static void
check_promotion (cpp_reader *pfile, const struct op *op)
{
  if (op->value.unsignedp == op[-1].value.unsignedp)
    return;

  if (op->value.unsignedp)
    {
      if (!num_positive (op[-1].value, CPP_OPTION (pfile, precision)))
 cpp_error (pfile, CPP_DL_WARNING,
     "the left operand of \"%s\" changes sign when promoted",
     cpp_token_as_text (pfile, op->token));
    }
  else if (!num_positive (op->value, CPP_OPTION (pfile, precision)))
    cpp_error (pfile, CPP_DL_WARNING,
        "the right operand of \"%s\" changes sign when promoted",
        cpp_token_as_text (pfile, op->token));
}
