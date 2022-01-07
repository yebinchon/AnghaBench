
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int instruction; int relax_inst; int relax_size; } ;


 scalar_t__ FAIL ;
 int _IMM4 ;
 int data_op2 (char**,int,int ) ;
 int end_of_line (char*) ;
 TYPE_1__ inst ;
 int reglow_required_here (char**,int) ;
 int skip_past_comma (char**) ;
 int skip_whitespace (char*) ;

__attribute__((used)) static void
do16_rdi4 (char *str)
{
  skip_whitespace (str);

  if (reglow_required_here (&str, 8) == (int) FAIL
      || skip_past_comma (&str) == (int) FAIL
      || data_op2 (&str, 3, _IMM4) == (int) FAIL
      || end_of_line (str) == (int) FAIL)
    {
      return;
    }
  else
    {
      if (((inst.instruction >> 3) & 0x10) == 0)
        {
          if (((inst.instruction >> 3) & 0xf) != 0xf)
            {
              inst.relax_inst |= (((inst.instruction >> 8) & 0xf) << 20)
                | ((1 << ((inst.instruction >> 3) & 0xf)) << 1);
              inst.relax_size = 4;
            }
          else
            {
              inst.relax_inst = 0x8000;
            }
        }
      else
        {
          if (((inst.instruction >> 3) & 0xf) != 0xf)
            {
              inst.relax_inst |= (((inst.instruction >> 8) & 0xf) << 20)
                | (((-(1 << ((inst.instruction >> 3) & 0xf))) & 0xffff) << 1);
              inst.relax_size = 4;
            }
          else
            {
              inst.relax_inst = 0x8000;
            }
        }
    }
}
