
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int instruction; int relax_inst; scalar_t__ type; int relax_size; int error; } ;


 int ERR_FOR_SCORE5U_MMU ;
 scalar_t__ FAIL ;
 scalar_t__ NO_OPD ;
 int end_of_line (char*) ;
 TYPE_1__ inst ;
 int university_version ;

__attribute__((used)) static void
do_empty (char *str)
{
  str = str;
  if (university_version == 1)
    {
      if (((inst.instruction & 0x3e0003ff) == 0x0c000004)
          || ((inst.instruction & 0x3e0003ff) == 0x0c000024)
          || ((inst.instruction & 0x3e0003ff) == 0x0c000044)
          || ((inst.instruction & 0x3e0003ff) == 0x0c000064))
        {
          inst.error = ERR_FOR_SCORE5U_MMU;
          return;
        }
    }
  if (end_of_line (str) == (int) FAIL)
    return;

  if (inst.relax_inst != 0x8000)
    {
      if (inst.type == NO_OPD)
        {
          inst.relax_size = 2;
        }
      else
        {
          inst.relax_size = 4;
        }
    }
}
