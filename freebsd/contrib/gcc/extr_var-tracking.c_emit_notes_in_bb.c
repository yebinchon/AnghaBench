
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_15__ ;
typedef struct TYPE_16__ TYPE_14__ ;


typedef int rtx ;
struct TYPE_20__ {int stack_adjust; } ;
typedef TYPE_3__ dataflow_set ;
typedef int basic_block ;
struct TYPE_18__ {int adjust; int loc; } ;
struct TYPE_19__ {int type; TYPE_1__ u; int insn; } ;
struct TYPE_16__ {int vars; } ;
struct TYPE_17__ {int n_mos; TYPE_2__* mos; TYPE_14__ in; } ;


 int EMIT_NOTE_AFTER_INSN ;
 int EMIT_NOTE_BEFORE_INSN ;
 int FIRST_PSEUDO_REGISTER ;
 int GET_CODE (int ) ;







 int REG ;
 int REG_P (int ) ;
 int TEST_HARD_REG_BIT (int ,int) ;
 TYPE_15__* VTI (int ) ;
 int call_used_reg_set ;
 int dataflow_set_copy (TYPE_3__*,TYPE_14__*) ;
 int dataflow_set_destroy (TYPE_3__*) ;
 int dataflow_set_init (TYPE_3__*,scalar_t__) ;
 int emit_notes_for_changes (int ,int ) ;
 scalar_t__ htab_elements (int ) ;
 int var_mem_delete (TYPE_3__*,int ,int) ;
 int var_mem_delete_and_set (TYPE_3__*,int ,int) ;
 int var_mem_set (TYPE_3__*,int ) ;
 int var_reg_delete (TYPE_3__*,int ,int) ;
 int var_reg_delete_and_set (TYPE_3__*,int ,int) ;
 int var_reg_set (TYPE_3__*,int ) ;
 int var_regno_delete (TYPE_3__*,int) ;

__attribute__((used)) static void
emit_notes_in_bb (basic_block bb)
{
  int i;
  dataflow_set set;

  dataflow_set_init (&set, htab_elements (VTI (bb)->in.vars) + 3);
  dataflow_set_copy (&set, &VTI (bb)->in);

  for (i = 0; i < VTI (bb)->n_mos; i++)
    {
      rtx insn = VTI (bb)->mos[i].insn;

      switch (VTI (bb)->mos[i].type)
 {
   case 133:
     {
       int r;

       for (r = 0; r < FIRST_PSEUDO_REGISTER; r++)
  if (TEST_HARD_REG_BIT (call_used_reg_set, r))
    {
      var_regno_delete (&set, r);
    }
       emit_notes_for_changes (insn, EMIT_NOTE_AFTER_INSN);
     }
     break;

   case 129:
     {
       rtx loc = VTI (bb)->mos[i].u.loc;

       if (GET_CODE (loc) == REG)
  var_reg_set (&set, loc);
       else
  var_mem_set (&set, loc);

       emit_notes_for_changes (insn, EMIT_NOTE_AFTER_INSN);
     }
     break;

   case 130:
     {
       rtx loc = VTI (bb)->mos[i].u.loc;

       if (REG_P (loc))
  var_reg_delete_and_set (&set, loc, 1);
       else
  var_mem_delete_and_set (&set, loc, 1);

       emit_notes_for_changes (insn, EMIT_NOTE_BEFORE_INSN);
     }
     break;

   case 131:
     {
       rtx loc = VTI (bb)->mos[i].u.loc;

       if (REG_P (loc))
  var_reg_delete_and_set (&set, loc, 0);
       else
  var_mem_delete_and_set (&set, loc, 0);

       emit_notes_for_changes (insn, EMIT_NOTE_BEFORE_INSN);
     }
     break;

   case 128:
     {
       rtx loc = VTI (bb)->mos[i].u.loc;

       if (REG_P (loc))
  var_reg_delete (&set, loc, 0);
       else
  var_mem_delete (&set, loc, 0);

       emit_notes_for_changes (insn, EMIT_NOTE_AFTER_INSN);
     }
     break;

   case 132:
     {
       rtx loc = VTI (bb)->mos[i].u.loc;

       if (REG_P (loc))
  var_reg_delete (&set, loc, 1);
       else
  var_mem_delete (&set, loc, 1);

       emit_notes_for_changes (insn, EMIT_NOTE_BEFORE_INSN);
     }
     break;

   case 134:
     set.stack_adjust += VTI (bb)->mos[i].u.adjust;
     break;
 }
    }
  dataflow_set_destroy (&set);
}
