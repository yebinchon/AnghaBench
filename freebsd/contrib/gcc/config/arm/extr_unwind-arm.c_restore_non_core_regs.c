
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int demand_save_flags; int vfp; } ;
typedef TYPE_1__ phase1_vrs ;


 int DEMAND_SAVE_VFP ;
 int __gnu_Unwind_Restore_VFP (int *) ;

__attribute__((used)) static void
restore_non_core_regs (phase1_vrs * vrs)
{
  if ((vrs->demand_save_flags & DEMAND_SAVE_VFP) == 0)
    __gnu_Unwind_Restore_VFP (&vrs->vfp);
}
