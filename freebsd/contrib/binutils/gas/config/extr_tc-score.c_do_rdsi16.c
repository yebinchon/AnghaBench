
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int instruction; int relax_inst; int relax_size; } ;


 scalar_t__ FAIL ;
 int REG_TYPE_SCORE ;
 int _SIMM16 ;
 int data_op2 (char**,int,int ) ;
 int end_of_line (char*) ;
 TYPE_1__ inst ;
 int reg_required_here (char**,int,int ) ;
 int skip_past_comma (char**) ;
 int skip_whitespace (char*) ;

__attribute__((used)) static void
do_rdsi16 (char *str)
{
  skip_whitespace (str);

  if (reg_required_here (&str, 20, REG_TYPE_SCORE) == (int) FAIL
      || skip_past_comma (&str) == (int) FAIL
      || data_op2 (&str, 1, _SIMM16) == (int) FAIL
      || end_of_line (str) == (int) FAIL)
    return;


  if ((inst.instruction & 0x20c0000) == 0x20c0000)
    {
      if ((((inst.instruction >> 20) & 0x10) == 0x10) || ((inst.instruction & 0x1fe00) != 0))
        {
          inst.relax_inst = 0x8000;
        }
      else
        {
          inst.relax_inst |= (inst.instruction >> 1) & 0xff;
          inst.relax_inst |= (((inst.instruction >> 20) & 0xf) << 8);
          inst.relax_size = 2;
        }
    }
  else if (((inst.instruction >> 20) & 0x10) == 0x10)
    {
      inst.relax_inst = 0x8000;
    }
}
