
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int error; } ;


 int BAD_ARGS ;
 scalar_t__ FAIL ;
 int REG_TYPE_SCORE ;
 int REG_TYPE_SCORE_CR ;
 int _ (char*) ;
 int _IMM10_RSHIFT_2 ;
 int end_of_line (char*) ;
 int exp_ldst_offset (char**,int,int ) ;
 TYPE_1__ inst ;
 int reg_required_here (char**,int,int ) ;
 int skip_past_comma (char**) ;
 int skip_whitespace (char*) ;

__attribute__((used)) static void
do_ldst_cop (char *str)
{
  skip_whitespace (str);

  if ((reg_required_here (&str, 15, REG_TYPE_SCORE_CR) == (int) FAIL)
      || (skip_past_comma (&str) == (int) FAIL))
    return;

  if (*str == '[')
    {
      str++;
      skip_whitespace (str);

      if (reg_required_here (&str, 20, REG_TYPE_SCORE) == (int) FAIL)
 return;

      skip_whitespace (str);

      if (*str++ != ']')
        {
          if (exp_ldst_offset (&str, 5, _IMM10_RSHIFT_2) == (int) FAIL)
     return;

          skip_whitespace (str);
          if (*str++ != ']')
            {
              inst.error = _("missing ]");
              return;
            }
        }

      end_of_line (str);
    }
  else
    inst.error = BAD_ARGS;
}
