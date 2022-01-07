
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int relax_inst; int instruction; int relax_size; int error; } ;


 int BAD_ARGS ;
 scalar_t__ FAIL ;
 int _ (char*) ;
 int end_of_line (char*) ;
 TYPE_1__ inst ;
 int reglow_required_here (char**,int) ;
 int skip_past_comma (char**) ;
 int skip_whitespace (char*) ;

__attribute__((used)) static void
do16_ldst_insn (char *str)
{
  skip_whitespace (str);

  if ((reglow_required_here (&str, 8) == (int) FAIL) || (skip_past_comma (&str) == (int) FAIL))
    return;

  if (*str == '[')
    {
      int reg;

      str++;
      skip_whitespace (str);

      if ((reg = reglow_required_here (&str, 4)) == (int) FAIL)
 return;

      skip_whitespace (str);
      if (*str++ == ']')
        {
          if (end_of_line (str) == (int) FAIL)
     return;
          else
            {
              inst.relax_inst |= (((inst.instruction >> 8) & 0xf) << 20)
                              | (((inst.instruction >> 4) & 0xf) << 15);
       inst.relax_size = 4;
            }
        }
      else
        {
          inst.error = _("missing ]");
        }
    }
  else
    {
      inst.error = BAD_ARGS;
    }
}
