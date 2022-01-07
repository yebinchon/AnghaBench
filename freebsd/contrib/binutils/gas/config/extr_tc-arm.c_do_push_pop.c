
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* operands; } ;
struct TYPE_3__ {int isreg; int writeback; int reg; } ;


 int REG_SP ;
 int do_ldmstm () ;
 TYPE_2__ inst ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void
do_push_pop (void)
{
  inst.operands[1] = inst.operands[0];
  memset (&inst.operands[0], 0, sizeof inst.operands[0]);
  inst.operands[0].isreg = 1;
  inst.operands[0].writeback = 1;
  inst.operands[0].reg = REG_SP;
  do_ldmstm ();
}
