
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_17__ ;


typedef int rtx ;
struct TYPE_21__ {int stack_adjust; int vars; } ;
typedef TYPE_3__ dataflow_set ;
typedef int basic_block ;
struct TYPE_19__ {int adjust; int loc; } ;
struct TYPE_20__ {int type; TYPE_1__ u; } ;
struct TYPE_18__ {int n_mos; TYPE_2__* mos; TYPE_3__ out; TYPE_3__ in; } ;


 int FIRST_PSEUDO_REGISTER ;
 int GET_CODE (int ) ;
 int MEM ;
 int MEM_P (int ) ;







 int REG ;
 int REG_P (int ) ;
 int TEST_HARD_REG_BIT (int ,int) ;
 TYPE_17__* VTI (int ) ;
 int call_used_reg_set ;
 int dataflow_set_copy (TYPE_3__*,TYPE_3__*) ;
 int dataflow_set_destroy (TYPE_3__*) ;
 int dataflow_set_different (TYPE_3__*,TYPE_3__*) ;
 int dataflow_set_init (TYPE_3__*,scalar_t__) ;
 scalar_t__ htab_elements (int ) ;
 int var_mem_delete (TYPE_3__*,int ,int) ;
 int var_mem_delete_and_set (TYPE_3__*,int ,int) ;
 int var_mem_set (TYPE_3__*,int ) ;
 int var_reg_delete (TYPE_3__*,int ,int) ;
 int var_reg_delete_and_set (TYPE_3__*,int ,int) ;
 int var_reg_set (TYPE_3__*,int ) ;
 int var_regno_delete (TYPE_3__*,int) ;

__attribute__((used)) static bool
compute_bb_dataflow (basic_block bb)
{
  int i, n, r;
  bool changed;
  dataflow_set old_out;
  dataflow_set *in = &VTI (bb)->in;
  dataflow_set *out = &VTI (bb)->out;

  dataflow_set_init (&old_out, htab_elements (VTI (bb)->out.vars) + 3);
  dataflow_set_copy (&old_out, out);
  dataflow_set_copy (out, in);

  n = VTI (bb)->n_mos;
  for (i = 0; i < n; i++)
    {
      switch (VTI (bb)->mos[i].type)
 {
   case 133:
     for (r = 0; r < FIRST_PSEUDO_REGISTER; r++)
       if (TEST_HARD_REG_BIT (call_used_reg_set, r))
  var_regno_delete (out, r);
     break;

   case 129:
     {
       rtx loc = VTI (bb)->mos[i].u.loc;

       if (GET_CODE (loc) == REG)
  var_reg_set (out, loc);
       else if (GET_CODE (loc) == MEM)
  var_mem_set (out, loc);
     }
     break;

   case 130:
     {
       rtx loc = VTI (bb)->mos[i].u.loc;

       if (REG_P (loc))
  var_reg_delete_and_set (out, loc, 1);
       else if (MEM_P (loc))
  var_mem_delete_and_set (out, loc, 1);
     }
     break;

   case 131:
     {
       rtx loc = VTI (bb)->mos[i].u.loc;

       if (REG_P (loc))
  var_reg_delete_and_set (out, loc, 0);
       else if (MEM_P (loc))
  var_mem_delete_and_set (out, loc, 0);
     }
     break;

   case 128:
     {
       rtx loc = VTI (bb)->mos[i].u.loc;

       if (REG_P (loc))
  var_reg_delete (out, loc, 0);
       else if (MEM_P (loc))
  var_mem_delete (out, loc, 0);
     }
     break;

   case 132:
     {
       rtx loc = VTI (bb)->mos[i].u.loc;

       if (REG_P (loc))
  var_reg_delete (out, loc, 1);
       else if (MEM_P (loc))
  var_mem_delete (out, loc, 1);
     }
     break;

   case 134:
     out->stack_adjust += VTI (bb)->mos[i].u.adjust;
     break;
 }
    }

  changed = dataflow_set_different (&old_out, out);
  dataflow_set_destroy (&old_out);
  return changed;
}
