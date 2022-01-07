
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int present; } ;


 int do_t_pkhbt () ;
 TYPE_2__ inst ;

__attribute__((used)) static void
do_t_pkhtb (void)
{
  if (!inst.operands[3].present)
    inst.instruction &= ~0x00000020;
  do_t_pkhbt ();
}
