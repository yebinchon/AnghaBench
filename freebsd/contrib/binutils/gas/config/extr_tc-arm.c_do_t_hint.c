
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size_req; int instruction; } ;


 int THUMB_OP16 (int ) ;
 int THUMB_OP32 (int ) ;
 TYPE_1__ inst ;
 scalar_t__ unified_syntax ;

__attribute__((used)) static void
do_t_hint (void)
{
  if (unified_syntax && inst.size_req == 4)
    inst.instruction = THUMB_OP32 (inst.instruction);
  else
    inst.instruction = THUMB_OP16 (inst.instruction);
}
