
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;




 int DImode ;
 int GEN_INT (int) ;
 int VOIDmode ;
 int const0_rtx ;
 int gcc_unreachable () ;
 int gen_rtvec (int,int ,...) ;
 int gen_rtx_EXPR_LIST (int ,int ,int ) ;
 int gen_rtx_PARALLEL (int,int ) ;
 int gen_rtx_REG (int ,int) ;

__attribute__((used)) static rtx
spe_build_register_parallel (enum machine_mode mode, int gregno)
{
  rtx r1, r3;

  switch (mode)
    {
    case 128:
      r1 = gen_rtx_REG (DImode, gregno);
      r1 = gen_rtx_EXPR_LIST (VOIDmode, r1, const0_rtx);
      return gen_rtx_PARALLEL (mode, gen_rtvec (1, r1));

    case 129:
      r1 = gen_rtx_REG (DImode, gregno);
      r1 = gen_rtx_EXPR_LIST (VOIDmode, r1, const0_rtx);
      r3 = gen_rtx_REG (DImode, gregno + 2);
      r3 = gen_rtx_EXPR_LIST (VOIDmode, r3, GEN_INT (8));
      return gen_rtx_PARALLEL (mode, gen_rtvec (2, r1, r3));

    default:
      gcc_unreachable ();
    }
}
