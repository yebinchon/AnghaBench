
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int instruction; void* error; int name; } ;


 void* BAD_ARGS ;
 scalar_t__ FAIL ;
 int REG_TYPE_SCORE ;
 int SET_INSN_ERROR (int *) ;
 void* _ (char*) ;
 int _IMM5 ;
 int _SIMM15 ;
 int data_op2 (char**,int,int ) ;
 int end_of_line (char*) ;
 int exp_ldst_offset (char**,int ,int ) ;
 TYPE_1__ inst ;
 int reg_required_here (char**,int,int ) ;
 int skip_past_comma (char**) ;
 int skip_whitespace (char*) ;
 int sprintf (int ,char*,int) ;

__attribute__((used)) static void
do_cache (char *str)
{
  skip_whitespace (str);

  if ((data_op2 (&str, 20, _IMM5) == (int) FAIL) || (skip_past_comma (&str) == (int) FAIL))
    {
      return;
    }
  else
    {
      int cache_op;

      cache_op = (inst.instruction >> 20) & 0x1F;
      sprintf (inst.name, "cache %d", cache_op);
    }

  if (*str == '[')
    {
      str++;
      skip_whitespace (str);

      if (reg_required_here (&str, 15, REG_TYPE_SCORE) == (int) FAIL)
 return;

      skip_whitespace (str);


      if (skip_past_comma (&str) == (int) FAIL)
        {
          SET_INSN_ERROR (((void*)0));
          if (*str != ']')
            {
              inst.error = _("missing ]");
              return;
            }
          str++;
        }

      else
        {
          if (exp_ldst_offset (&str, 0, _SIMM15) == (int) FAIL)
            {
              return;
            }

          skip_whitespace (str);
          if (*str++ != ']')
            {
              inst.error = _("missing ]");
              return;
            }
        }

      if (end_of_line (str) == (int) FAIL)
 return;
    }
  else
    {
      inst.error = BAD_ARGS;
    }
}
