
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int e_flags; } ;


 int EF_SCORE_FIXDEP ;
 int EF_SCORE_PIC ;
 scalar_t__ PIC ;
 TYPE_1__* elf_elfheader (int ) ;
 int fix_data_dependency ;
 scalar_t__ score_pic ;
 int stdoutput ;

void
score_elf_final_processing (void)
{
  if (fix_data_dependency == 1)
    {
      elf_elfheader (stdoutput)->e_flags |= EF_SCORE_FIXDEP;
    }
  if (score_pic == PIC)
    {
      elf_elfheader (stdoutput)->e_flags |= EF_SCORE_PIC;
    }
}
