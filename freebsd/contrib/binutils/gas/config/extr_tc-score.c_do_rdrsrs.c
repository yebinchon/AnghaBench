
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int instruction; int relax_inst; int relax_size; } ;


 scalar_t__ FAIL ;
 int REG_TYPE_SCORE ;
 int end_of_line (char*) ;
 TYPE_1__ inst ;
 int reg_required_here (char**,int,int ) ;
 int skip_past_comma (char**) ;
 int skip_whitespace (char*) ;

__attribute__((used)) static void
do_rdrsrs (char *str)
{
  skip_whitespace (str);

  if (reg_required_here (&str, 20, REG_TYPE_SCORE) == (int) FAIL
      || skip_past_comma (&str) == (int) FAIL
      || reg_required_here (&str, 15, REG_TYPE_SCORE) == (int) FAIL
      || skip_past_comma (&str) == (int) FAIL
      || reg_required_here (&str, 10, REG_TYPE_SCORE) == (int) FAIL
      || end_of_line (str) == (int) FAIL)
    {
      return;
    }
  else
    {
      if ((((inst.instruction >> 15) & 0x10) == 0)
          && (((inst.instruction >> 10) & 0x10) == 0)
          && (((inst.instruction >> 20) & 0x10) == 0)
          && (inst.relax_inst != 0x8000)
          && (((inst.instruction >> 20) & 0xf) == ((inst.instruction >> 15) & 0xf)))
        {
          inst.relax_inst |= (((inst.instruction >> 10) & 0xf) << 4)
            | (((inst.instruction >> 15) & 0xf) << 8);
          inst.relax_size = 2;
        }
      else
        {
          inst.relax_inst = 0x8000;
        }
    }
}
