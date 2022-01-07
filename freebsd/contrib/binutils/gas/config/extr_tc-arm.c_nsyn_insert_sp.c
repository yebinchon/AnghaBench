
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* operands; } ;
struct TYPE_3__ {int reg; int isreg; int writeback; int present; } ;


 TYPE_2__ inst ;
 int memset (TYPE_1__*,char,int) ;

__attribute__((used)) static void
nsyn_insert_sp (void)
{
  inst.operands[1] = inst.operands[0];
  memset (&inst.operands[0], '\0', sizeof (inst.operands[0]));
  inst.operands[0].reg = 13;
  inst.operands[0].isreg = 1;
  inst.operands[0].writeback = 1;
  inst.operands[0].present = 1;
}
