
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_3__ {int sysv_gregno; scalar_t__ stdarg; } ;
typedef TYPE_1__ CUMULATIVE_ARGS ;


 int DCmode ;
 int DFmode ;
 int GEN_INT (int) ;
 int GP_ARG_MAX_REG ;
 int NULL_RTX ;
 int SImode ;
 scalar_t__ TARGET_E500_DOUBLE ;
 int const0_rtx ;
 int gen_rtvec (int,int ,int ) ;
 int gen_rtx_EXPR_LIST (int,int ,int ) ;
 int gen_rtx_PARALLEL (int,int ) ;
 int gen_rtx_REG (int,int) ;
 int rs6000_arg_size (int,int ) ;
 int spe_build_register_parallel (int,int) ;

__attribute__((used)) static rtx
rs6000_spe_function_arg (CUMULATIVE_ARGS *cum, enum machine_mode mode,
    tree type)
{
  int gregno = cum->sysv_gregno;



  if (TARGET_E500_DOUBLE && (mode == DFmode || mode == DCmode))
    {
      int n_words = rs6000_arg_size (mode, type);


      if (mode == DFmode)
 gregno += (1 - gregno) & 1;


      if (gregno + n_words - 1 > GP_ARG_MAX_REG)
 return NULL_RTX;

      return spe_build_register_parallel (mode, gregno);
    }
  if (cum->stdarg)
    {
      int n_words = rs6000_arg_size (mode, type);


      if (n_words == 2 && (gregno & 1) == 0)
 gregno += 1;

      if (gregno + n_words - 1 <= GP_ARG_MAX_REG)
 {
   rtx r1, r2;
   enum machine_mode m = SImode;

   r1 = gen_rtx_REG (m, gregno);
   r1 = gen_rtx_EXPR_LIST (m, r1, const0_rtx);
   r2 = gen_rtx_REG (m, gregno + 1);
   r2 = gen_rtx_EXPR_LIST (m, r2, GEN_INT (4));
   return gen_rtx_PARALLEL (mode, gen_rtvec (2, r1, r2));
 }
      else
 return NULL_RTX;
    }
  else
    {
      if (gregno <= GP_ARG_MAX_REG)
 return gen_rtx_REG (mode, gregno);
      else
 return NULL_RTX;
    }
}
