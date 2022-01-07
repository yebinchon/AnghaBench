
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int error; } ;


 int BAD_ARGS ;
 int ERR_FOR_SCORE5U_ATOMIC ;
 scalar_t__ FAIL ;
 int REG_TYPE_SCORE ;
 int _ (char*) ;
 int end_of_line (char*) ;
 TYPE_1__ inst ;
 int reg_required_here (char**,int,int ) ;
 int skip_past_comma (char**) ;
 int skip_whitespace (char*) ;
 int university_version ;

__attribute__((used)) static void
do_ldst_atomic (char *str)
{
  if (university_version == 1)
    {
      inst.error = ERR_FOR_SCORE5U_ATOMIC;
      return;
    }

  skip_whitespace (str);

  if ((reg_required_here (&str, 20, REG_TYPE_SCORE) == (int) FAIL)
      || (skip_past_comma (&str) == (int) FAIL))
    {
      return;
    }
  else
    {

      skip_whitespace (str);
      if (*str++ == '[')
        {
          int reg;

          skip_whitespace (str);
          if ((reg = reg_required_here (&str, 15, REG_TYPE_SCORE)) == (int) FAIL)
            {
              return;
            }

          skip_whitespace (str);
          if (*str++ != ']')
            {
              inst.error = _("missing ]");
              return;
            }

          end_of_line (str);
        }
      else
 inst.error = BAD_ARGS;
    }
}
