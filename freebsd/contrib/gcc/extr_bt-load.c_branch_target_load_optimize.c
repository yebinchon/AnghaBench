
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef enum reg_class { ____Placeholder_reg_class } reg_class ;
struct TYPE_3__ {int (* issue_rate ) () ;} ;
struct TYPE_4__ {int (* branch_target_register_class ) () ;int (* branch_target_register_callee_saved ) (int) ;TYPE_1__ sched; } ;


 int CDI_DOMINATORS ;
 int CLEANUP_EXPENSIVE ;
 int NO_REGS ;
 int PROP_DEATH_NOTES ;
 int PROP_REG_INFO ;
 int UPDATE_LIFE_GLOBAL_RM_NOTES ;
 int calculate_dominance_info (int ) ;
 int cleanup_cfg (int ) ;
 int free_dominance_info (int ) ;
 int issue_rate ;
 int life_analysis (int ) ;
 int migrate_btr_defs (int,int ) ;
 scalar_t__ optimize ;
 int stub1 () ;
 int stub2 () ;
 int stub3 (int) ;
 TYPE_2__ targetm ;
 int update_life_info (int *,int ,int) ;

void
branch_target_load_optimize (bool after_prologue_epilogue_gen)
{
  enum reg_class class = targetm.branch_target_register_class ();
  if (class != NO_REGS)
    {

      if (targetm.sched.issue_rate)
 issue_rate = targetm.sched.issue_rate ();
      else
 issue_rate = 1;





      cleanup_cfg (optimize ? CLEANUP_EXPENSIVE : 0);


      life_analysis (0);


      calculate_dominance_info (CDI_DOMINATORS);
      migrate_btr_defs (class,
         (targetm.branch_target_register_callee_saved
   (after_prologue_epilogue_gen)));

      free_dominance_info (CDI_DOMINATORS);

      update_life_info (((void*)0), UPDATE_LIFE_GLOBAL_RM_NOTES,
   PROP_DEATH_NOTES | PROP_REG_INFO);
    }
}
