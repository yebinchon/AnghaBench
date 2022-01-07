
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct assign_parm_data_one {scalar_t__ promoted_mode; scalar_t__ nominal_mode; scalar_t__ entry_parm; scalar_t__ stack_parm; int passed_type; } ;
struct assign_parm_data_all {int conversion_insns; } ;
typedef int rtx ;


 int BLOCK_OP_NORMAL ;
 int GEN_INT (int ) ;
 int GET_MODE (scalar_t__) ;
 int GET_MODE_SIZE (int ) ;
 scalar_t__ MEM_P (int ) ;
 int SET_DECL_RTL (int ,scalar_t__) ;
 int TREE_TYPE (int ) ;
 int TYPE_ALIGN (int ) ;
 int TYPE_UNSIGNED (int ) ;
 scalar_t__ adjust_address (scalar_t__,scalar_t__,int ) ;
 scalar_t__ assign_stack_local (int ,int ,int ) ;
 scalar_t__ convert_to_mode (scalar_t__,int ,int ) ;
 int emit_block_move (int ,int ,int ,int ) ;
 int emit_move_insn (int ,int ) ;
 int end_sequence () ;
 int gen_reg_rtx (int ) ;
 int get_insns () ;
 int int_size_in_bytes (int ) ;
 int push_to_sequence (int ) ;
 int set_mem_attributes (scalar_t__,int ,int) ;
 int validize_mem (scalar_t__) ;

__attribute__((used)) static void
assign_parm_setup_stack (struct assign_parm_data_all *all, tree parm,
           struct assign_parm_data_one *data)
{


  bool to_conversion = 0;

  if (data->promoted_mode != data->nominal_mode)
    {

      rtx tempreg = gen_reg_rtx (GET_MODE (data->entry_parm));

      emit_move_insn (tempreg, validize_mem (data->entry_parm));

      push_to_sequence (all->conversion_insns);
      to_conversion = 1;

      data->entry_parm = convert_to_mode (data->nominal_mode, tempreg,
       TYPE_UNSIGNED (TREE_TYPE (parm)));

      if (data->stack_parm)

 data->stack_parm
   = adjust_address (data->stack_parm, data->nominal_mode, 0);
    }

  if (data->entry_parm != data->stack_parm)
    {
      rtx src, dest;

      if (data->stack_parm == 0)
 {
   data->stack_parm
     = assign_stack_local (GET_MODE (data->entry_parm),
      GET_MODE_SIZE (GET_MODE (data->entry_parm)),
      TYPE_ALIGN (data->passed_type));
   set_mem_attributes (data->stack_parm, parm, 1);
 }

      dest = validize_mem (data->stack_parm);
      src = validize_mem (data->entry_parm);

      if (MEM_P (src))
 {

   if (!to_conversion)
     push_to_sequence (all->conversion_insns);
   to_conversion = 1;

   emit_block_move (dest, src,
      GEN_INT (int_size_in_bytes (data->passed_type)),
      BLOCK_OP_NORMAL);
 }
      else
 emit_move_insn (dest, src);
    }

  if (to_conversion)
    {
      all->conversion_insns = get_insns ();
      end_sequence ();
    }

  SET_DECL_RTL (parm, data->stack_parm);
}
