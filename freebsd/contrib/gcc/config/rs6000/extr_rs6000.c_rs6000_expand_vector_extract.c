
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int GET_MODE (int ) ;
 int GET_MODE_INNER (int) ;
 int GET_MODE_SIZE (int) ;
 int UNSPEC_STVE ;
 int VOIDmode ;
 int adjust_address_nv (int ,int,int) ;
 int assign_stack_temp (int,int,int ) ;
 int const0_rtx ;
 int emit_insn (int ) ;
 int emit_move_insn (int ,int ) ;
 int gen_rtvec (int,int ,...) ;
 int gen_rtx_PARALLEL (int ,int ) ;
 int gen_rtx_SET (int ,int ,int ) ;
 int gen_rtx_UNSPEC (int ,int ,int ) ;

void
rs6000_expand_vector_extract (rtx target, rtx vec, int elt)
{
  enum machine_mode mode = GET_MODE (vec);
  enum machine_mode inner_mode = GET_MODE_INNER (mode);
  rtx mem, x;


  mem = assign_stack_temp (mode, GET_MODE_SIZE (mode), 0);


  mem = adjust_address_nv (mem, mode, elt * GET_MODE_SIZE (inner_mode));


  x = gen_rtx_UNSPEC (VOIDmode,
        gen_rtvec (1, const0_rtx), UNSPEC_STVE);
  emit_insn (gen_rtx_PARALLEL (VOIDmode,
          gen_rtvec (2,
       gen_rtx_SET (VOIDmode,
             mem, vec),
       x)));
  emit_move_insn (target, adjust_address_nv (mem, inner_mode, 0));
}
