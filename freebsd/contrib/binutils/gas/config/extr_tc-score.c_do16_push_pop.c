
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int instruction; int relax_inst; int relax_size; void* error; } ;


 void* BAD_ARGS ;
 scalar_t__ FAIL ;
 int REG_TYPE_SCORE ;
 void* _ (char*) ;
 int end_of_line (char*) ;
 TYPE_1__ inst ;
 int reg_required_here (char**,int,int ) ;
 int skip_past_comma (char**) ;
 int skip_whitespace (char*) ;

__attribute__((used)) static void
do16_push_pop (char *str)
{
  int reg_rd;
  int H_bit_mask = 0;

  skip_whitespace (str);
  if (((reg_rd = reg_required_here (&str, 8, REG_TYPE_SCORE)) == (int) FAIL)
      || (skip_past_comma (&str) == (int) FAIL))
    return;

  if (reg_rd >= 16)
    H_bit_mask = 1;


  inst.instruction &= ~(1 << 12);

  inst.instruction |= H_bit_mask << 7;

  if (*str == '[')
    {
      int reg;

      str++;
      skip_whitespace (str);
      if ((reg = reg_required_here (&str, 4, REG_TYPE_SCORE)) == (int) FAIL)
 return;
      else if (reg > 7)
        {
          if (!inst.error)
     inst.error = _("base register nums are over 3 bit");

          return;
        }

      skip_whitespace (str);
      if ((*str++ != ']') || (end_of_line (str) == (int) FAIL))
        {
          if (!inst.error)
     inst.error = _("missing ]");

          return;
        }


      if ((inst.instruction & 0xf) == 0xa)
        {
          if (H_bit_mask)
            {
              inst.relax_inst |= ((((inst.instruction >> 8) & 0xf) | 0x10) << 20)
                                  | (((inst.instruction >> 4) & 0x7) << 15) | (4 << 3);
            }
          else
            {
              inst.relax_inst |= (((inst.instruction >> 8) & 0xf) << 20)
                                  | (((inst.instruction >> 4) & 0x7) << 15) | (4 << 3);
            }
        }

      else
        {
          if (H_bit_mask)
            {
              inst.relax_inst |= ((((inst.instruction >> 8) & 0xf) | 0x10) << 20)
                                  | (((inst.instruction >> 4) & 0x7) << 15) | (((-4) & 0xfff) << 3);
            }
          else
            {
              inst.relax_inst |= (((inst.instruction >> 8) & 0xf) << 20)
                                  | (((inst.instruction >> 4) & 0x7) << 15) | (((-4) & 0xfff) << 3);
            }
        }
      inst.relax_size = 4;
    }
  else
    {
      inst.error = BAD_ARGS;
    }
}
