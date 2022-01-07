
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct struct_equiv_checkpoint {scalar_t__ ninsns; int input_count; } ;
struct TYPE_2__ {scalar_t__ input_count; scalar_t__ ninsns; int x_start; } ;
struct equiv_info {int input_cost; int mode; scalar_t__ check_input_conflict; TYPE_1__ cur; } ;


 int COSTS_N_INSNS (scalar_t__) ;
 scalar_t__ IMPOSSIBLE_MOVE_FACTOR ;
 int STRUCT_EQUIV_FINAL ;
 int cancel_changes (int ) ;
 int cc0_rtx ;
 int confirm_change_group () ;
 scalar_t__ reg_mentioned_p (int ,int ) ;
 int resolve_input_conflict (struct equiv_info*) ;
 int sets_cc0_p (int ) ;
 int struct_equiv_make_checkpoint (struct struct_equiv_checkpoint*,struct equiv_info*) ;

__attribute__((used)) static void
struct_equiv_improve_checkpoint (struct struct_equiv_checkpoint *p,
     struct equiv_info *info)
{





  if (info->cur.input_count >= IMPOSSIBLE_MOVE_FACTOR)
    return;
  if (info->input_cost >= 0
      ? (COSTS_N_INSNS(info->cur.ninsns - p->ninsns)
  > info->input_cost * (info->cur.input_count - p->input_count))
      : info->cur.ninsns > p->ninsns && !info->cur.input_count)
    {
      if (info->check_input_conflict && ! resolve_input_conflict (info))
 return;



      if (info->mode & STRUCT_EQUIV_FINAL)
 confirm_change_group ();
      else
 cancel_changes (0);
      struct_equiv_make_checkpoint (p, info);
    }
}
