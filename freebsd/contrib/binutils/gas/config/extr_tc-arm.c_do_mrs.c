
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int imm; int reg; } ;


 int PSR_c ;
 int PSR_f ;
 int PSR_s ;
 int PSR_x ;
 int SPSR_BIT ;
 scalar_t__ SUCCESS ;
 int _ (char*) ;
 int constraint (int,int ) ;
 scalar_t__ do_vfp_nsyn_mrs () ;
 TYPE_2__ inst ;

__attribute__((used)) static void
do_mrs (void)
{
  if (do_vfp_nsyn_mrs () == SUCCESS)
    return;


  constraint ((inst.operands[1].imm & (PSR_c|PSR_x|PSR_s|PSR_f))
       != (PSR_c|PSR_f),
       _("'CPSR' or 'SPSR' expected"));
  inst.instruction |= inst.operands[0].reg << 12;
  inst.instruction |= (inst.operands[1].imm & SPSR_BIT);
}
