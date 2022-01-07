
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int constant; } ;
struct TYPE_7__ {int constant; } ;
struct TYPE_10__ {TYPE_3__ offset; TYPE_2__ slot_offset; } ;
struct assign_parm_data_one {scalar_t__ promoted_mode; int named_arg; scalar_t__ passed_mode; int partial; scalar_t__ entry_parm; TYPE_5__ locate; int passed_type; scalar_t__ stack_parm; } ;
struct assign_parm_data_all {scalar_t__ reg_parm_stack_space; int extra_pretend_bytes; int pretend_args_size; int stack_args_size; int args_so_far; } ;
typedef scalar_t__ rtx ;
struct TYPE_6__ {int (* arg_partial_bytes ) (int *,scalar_t__,int ,int) ;scalar_t__ (* must_pass_in_stack ) (scalar_t__,int ) ;scalar_t__ (* pretend_outgoing_varargs_named ) (int *) ;} ;
struct TYPE_9__ {TYPE_1__ calls; } ;
typedef int HOST_WIDE_INT ;


 int CEIL_ROUND (int,int ) ;
 scalar_t__ FUNCTION_ARG (int ,scalar_t__,int ,int) ;
 scalar_t__ FUNCTION_INCOMING_ARG (int ,scalar_t__,int ,int) ;
 int STACK_BYTES ;
 scalar_t__ VOIDmode ;
 scalar_t__ const0_rtx ;
 int current_function_decl ;
 int gcc_assert (int) ;
 int locate_and_pad_parm (scalar_t__,int ,int,int,int ,int *,TYPE_5__*) ;
 scalar_t__ stub1 (int *) ;
 scalar_t__ stub2 (scalar_t__,int ) ;
 int stub3 (int *,scalar_t__,int ,int) ;
 TYPE_4__ targetm ;

__attribute__((used)) static void
assign_parm_find_entry_rtl (struct assign_parm_data_all *all,
       struct assign_parm_data_one *data)
{
  HOST_WIDE_INT pretend_bytes = 0;
  rtx entry_parm;
  bool in_regs;

  if (data->promoted_mode == VOIDmode)
    {
      data->entry_parm = data->stack_parm = const0_rtx;
      return;
    }





  entry_parm = FUNCTION_ARG (all->args_so_far, data->promoted_mode,
        data->passed_type, data->named_arg);


  if (entry_parm == 0)
    data->promoted_mode = data->passed_mode;
  in_regs = entry_parm != 0;



  if (!in_regs && !data->named_arg)
    {
      if (targetm.calls.pretend_outgoing_varargs_named (&all->args_so_far))
 {
   rtx tem;




   tem = FUNCTION_ARG (all->args_so_far, data->promoted_mode,
         data->passed_type, 1);

   in_regs = tem != ((void*)0);
 }
    }



  if (targetm.calls.must_pass_in_stack (data->promoted_mode,
     data->passed_type))
    entry_parm = 0;

  if (entry_parm)
    {
      int partial;

      partial = targetm.calls.arg_partial_bytes (&all->args_so_far,
       data->promoted_mode,
       data->passed_type,
       data->named_arg);
      data->partial = partial;



      if (partial != 0 && all->reg_parm_stack_space == 0)
 {
   gcc_assert (!all->extra_pretend_bytes && !all->pretend_args_size);

   pretend_bytes = partial;
   all->pretend_args_size = CEIL_ROUND (pretend_bytes, STACK_BYTES);



   all->extra_pretend_bytes = all->pretend_args_size;
 }
    }

  locate_and_pad_parm (data->promoted_mode, data->passed_type, in_regs,
         entry_parm ? data->partial : 0, current_function_decl,
         &all->stack_args_size, &data->locate);


  pretend_bytes = all->extra_pretend_bytes - pretend_bytes;
  data->locate.slot_offset.constant += pretend_bytes;
  data->locate.offset.constant += pretend_bytes;

  data->entry_parm = entry_parm;
}
