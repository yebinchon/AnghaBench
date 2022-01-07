
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int relax_inst; int instruction; int relax_size; } ;


 scalar_t__ FAIL ;
 int REG_TYPE_SCORE ;
 int end_of_line (char*) ;
 TYPE_1__ inst ;
 int reg_required_here (char**,int,int ) ;
 int skip_whitespace (char*) ;

__attribute__((used)) static void
do_rs (char *str)
{
  skip_whitespace (str);

  if (reg_required_here (&str, 15, REG_TYPE_SCORE) == (int) FAIL
      || end_of_line (str) == (int) FAIL)
    return;

  if ((inst.relax_inst != 0x8000) && (((inst.instruction >> 15) & 0x10) == 0))
    {
      inst.relax_inst |= (((inst.instruction >> 10) & 0xf) << 8) | (((inst.instruction >> 15) & 0xf) << 4);
      inst.relax_size = 2;
    }
  else
    inst.relax_inst = 0x8000;
}
