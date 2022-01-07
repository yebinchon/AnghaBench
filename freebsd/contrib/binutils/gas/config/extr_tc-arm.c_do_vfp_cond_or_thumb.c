
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int instruction; int cond; } ;


 TYPE_1__ inst ;
 scalar_t__ thumb_mode ;

__attribute__((used)) static void
do_vfp_cond_or_thumb (void)
{
  if (thumb_mode)
    inst.instruction |= 0xe0000000;
  else
    inst.instruction |= inst.cond << 28;
}
