
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct assign_parm_data_all {int conversion_insns; scalar_t__ orig_fnargs; } ;
typedef scalar_t__ rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_3__ {scalar_t__ (* split_complex_arg ) (int ) ;} ;
struct TYPE_4__ {TYPE_1__ calls; } ;
typedef int HOST_WIDE_INT ;


 scalar_t__ COMPLEX_TYPE ;
 scalar_t__ DECL_INCOMING_RTL (scalar_t__) ;
 int DECL_MODE (scalar_t__) ;
 scalar_t__ DECL_RTL (scalar_t__) ;
 int GET_MODE (scalar_t__) ;
 int GET_MODE_INNER (int ) ;
 int GET_MODE_SIZE (int) ;
 scalar_t__ MEM_P (scalar_t__) ;
 int SET_DECL_RTL (scalar_t__,scalar_t__) ;
 scalar_t__ TREE_ADDRESSABLE (scalar_t__) ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (scalar_t__) ;
 int TYPE_ALIGN (int ) ;
 scalar_t__ adjust_address_nv (scalar_t__,int,int ) ;
 scalar_t__ assign_stack_local (int ,int ,int ) ;
 int emit_move_insn (scalar_t__,scalar_t__) ;
 int end_sequence () ;
 scalar_t__ gen_lowpart_SUBREG (int,scalar_t__) ;
 scalar_t__ gen_rtx_CONCAT (int ,scalar_t__,scalar_t__) ;
 int get_insns () ;
 int int_size_in_bytes (int ) ;
 int push_to_sequence (int ) ;
 int set_decl_incoming_rtl (scalar_t__,scalar_t__) ;
 int set_mem_attributes (scalar_t__,scalar_t__,int) ;
 int set_mem_expr (scalar_t__,scalar_t__) ;
 scalar_t__ stub1 (int ) ;
 TYPE_2__ targetm ;

__attribute__((used)) static void
assign_parms_unsplit_complex (struct assign_parm_data_all *all, tree fnargs)
{
  tree parm;
  tree orig_fnargs = all->orig_fnargs;

  for (parm = orig_fnargs; parm; parm = TREE_CHAIN (parm))
    {
      if (TREE_CODE (TREE_TYPE (parm)) == COMPLEX_TYPE
   && targetm.calls.split_complex_arg (TREE_TYPE (parm)))
 {
   rtx tmp, real, imag;
   enum machine_mode inner = GET_MODE_INNER (DECL_MODE (parm));

   real = DECL_RTL (fnargs);
   imag = DECL_RTL (TREE_CHAIN (fnargs));
   if (inner != GET_MODE (real))
     {
       real = gen_lowpart_SUBREG (inner, real);
       imag = gen_lowpart_SUBREG (inner, imag);
     }

   if (TREE_ADDRESSABLE (parm))
     {
       rtx rmem, imem;
       HOST_WIDE_INT size = int_size_in_bytes (TREE_TYPE (parm));



       tmp = assign_stack_local (DECL_MODE (parm), size,
     TYPE_ALIGN (TREE_TYPE (parm)));
       set_mem_attributes (tmp, parm, 1);
       rmem = adjust_address_nv (tmp, inner, 0);
       imem = adjust_address_nv (tmp, inner, GET_MODE_SIZE (inner));
       push_to_sequence (all->conversion_insns);
       emit_move_insn (rmem, real);
       emit_move_insn (imem, imag);
       all->conversion_insns = get_insns ();
       end_sequence ();
     }
   else
     tmp = gen_rtx_CONCAT (DECL_MODE (parm), real, imag);
   SET_DECL_RTL (parm, tmp);

   real = DECL_INCOMING_RTL (fnargs);
   imag = DECL_INCOMING_RTL (TREE_CHAIN (fnargs));
   if (inner != GET_MODE (real))
     {
       real = gen_lowpart_SUBREG (inner, real);
       imag = gen_lowpart_SUBREG (inner, imag);
     }
   tmp = gen_rtx_CONCAT (DECL_MODE (parm), real, imag);
   set_decl_incoming_rtl (parm, tmp);
   fnargs = TREE_CHAIN (fnargs);
 }
      else
 {
   SET_DECL_RTL (parm, DECL_RTL (fnargs));
   set_decl_incoming_rtl (parm, DECL_INCOMING_RTL (fnargs));



   if (DECL_INCOMING_RTL (parm) && MEM_P (DECL_INCOMING_RTL (parm)))
     set_mem_expr (DECL_INCOMING_RTL (parm), parm);
 }

      fnargs = TREE_CHAIN (fnargs);
    }
}
