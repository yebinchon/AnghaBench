
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* operands; } ;
struct TYPE_3__ {int postind; int writeback; int preind; int isreg; } ;


 int FALSE ;
 int _ (char*) ;
 int constraint (int,int ) ;
 int encode_arm_addr_mode_2 (int ,int ) ;
 TYPE_2__ inst ;

__attribute__((used)) static void
do_pld (void)
{
  constraint (!inst.operands[0].isreg,
       _("'[' expected after PLD mnemonic"));
  constraint (inst.operands[0].postind,
       _("post-indexed expression used in preload instruction"));
  constraint (inst.operands[0].writeback,
       _("writeback used in preload instruction"));
  constraint (!inst.operands[0].preind,
       _("unindexed addressing used in preload instruction"));
  encode_arm_addr_mode_2 (0, FALSE);
}
