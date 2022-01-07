
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dataflow {int dummy; } ;
typedef int rtx ;
typedef int basic_block ;
typedef scalar_t__ RTX_CODE ;


 scalar_t__ CLOBBER ;
 scalar_t__ COND_EXEC ;
 int COND_EXEC_CODE (int ) ;
 int DF_REF_MUST_CLOBBER ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ PARALLEL ;
 scalar_t__ SET ;
 int XVECEXP (int ,int ,int) ;
 int XVECLEN (int ,int ) ;
 int df_def_record_1 (struct dataflow*,int ,int ,int ,int ,int) ;

__attribute__((used)) static void
df_defs_record (struct dataflow *dflow, rtx x, basic_block bb, rtx insn)
{
  RTX_CODE code = GET_CODE (x);

  if (code == SET || code == CLOBBER)
    {

      df_def_record_1 (dflow, x, bb, insn,
         code == CLOBBER ? DF_REF_MUST_CLOBBER : 0, 1);
    }
  else if (code == COND_EXEC)
    {
      df_defs_record (dflow, COND_EXEC_CODE (x), bb, insn);
    }
  else if (code == PARALLEL)
    {
      int i;


      for (i = XVECLEN (x, 0) - 1; i >= 0; i--)
  df_defs_record (dflow, XVECEXP (x, 0, i), bb, insn);
    }
}
