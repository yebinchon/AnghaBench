
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int CCmode ;
 int GET_MODE (int ) ;
 int GET_MODE_SIZE (int ) ;
 int REGNO (int ) ;
 int SImode ;
 int TARGET_USE_MOV0 ;
 int VOIDmode ;
 int const0_rtx ;
 int emit_insn (int ) ;
 int gcc_assert (scalar_t__) ;
 int gen_rtvec (int,int ,int ) ;
 int gen_rtx_CLOBBER (int ,int ) ;
 int gen_rtx_PARALLEL (int ,int ) ;
 int gen_rtx_REG (int ,int) ;
 int gen_rtx_SET (int ,int ,int ) ;
 scalar_t__ optimize_size ;
 scalar_t__ reload_completed ;

void
ix86_expand_clear (rtx dest)
{
  rtx tmp;


  gcc_assert (reload_completed);


  if (GET_MODE_SIZE (GET_MODE (dest)) < 4)
    dest = gen_rtx_REG (SImode, REGNO (dest));

  tmp = gen_rtx_SET (VOIDmode, dest, const0_rtx);


  if (reload_completed && (!TARGET_USE_MOV0 || optimize_size))
    {
      rtx clob = gen_rtx_CLOBBER (VOIDmode, gen_rtx_REG (CCmode, 17));
      tmp = gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2, tmp, clob));
    }

  emit_insn (tmp);
}
