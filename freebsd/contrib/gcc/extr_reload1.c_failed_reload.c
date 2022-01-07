
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rtx ;
struct TYPE_2__ {int optional; int secondary_p; scalar_t__ reg_rtx; scalar_t__ out; scalar_t__ in; } ;


 int PATTERN (int ) ;
 scalar_t__ asm_noperands (int ) ;
 int error_for_asm (int ,char*) ;
 int fatal_insn (char*,int ) ;
 TYPE_1__* rld ;

__attribute__((used)) static void
failed_reload (rtx insn, int r)
{
  if (asm_noperands (PATTERN (insn)) < 0)

    fatal_insn ("could not find a spill register", insn);



  error_for_asm (insn,
   "%<asm%> operand constraint incompatible with operand size");
  rld[r].in = 0;
  rld[r].out = 0;
  rld[r].reg_rtx = 0;
  rld[r].optional = 1;
  rld[r].secondary_p = 1;
}
