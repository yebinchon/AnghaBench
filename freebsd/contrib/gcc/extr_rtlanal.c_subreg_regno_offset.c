
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ BYTES_BIG_ENDIAN ;
 unsigned int FIRST_PSEUDO_REGISTER ;
 unsigned int GET_MODE_SIZE (int) ;
 scalar_t__ HARD_REGNO_NREGS_HAS_PADDING (unsigned int,int) ;
 int HARD_REGNO_NREGS_WITH_PADDING (unsigned int,int) ;
 unsigned int UNITS_PER_WORD ;
 scalar_t__ WORDS_BIG_ENDIAN ;
 int gcc_assert (int) ;
 int** hard_regno_nregs ;

unsigned int
subreg_regno_offset (unsigned int xregno, enum machine_mode xmode,
       unsigned int offset, enum machine_mode ymode)
{
  int nregs_xmode, nregs_ymode;
  int mode_multiple, nregs_multiple;
  int y_offset;

  gcc_assert (xregno < FIRST_PSEUDO_REGISTER);


  if (HARD_REGNO_NREGS_HAS_PADDING (xregno, xmode))
    nregs_xmode = HARD_REGNO_NREGS_WITH_PADDING (xregno, xmode);
  else
    nregs_xmode = hard_regno_nregs[xregno][xmode];

  nregs_ymode = hard_regno_nregs[xregno][ymode];




  if (offset == 0
      && nregs_ymode > nregs_xmode
      && (GET_MODE_SIZE (ymode) > UNITS_PER_WORD
   ? WORDS_BIG_ENDIAN : BYTES_BIG_ENDIAN))
    return nregs_xmode - nregs_ymode;

  if (offset == 0 || nregs_xmode == nregs_ymode)
    return 0;


  mode_multiple = GET_MODE_SIZE (xmode) / GET_MODE_SIZE (ymode);
  gcc_assert (mode_multiple != 0);

  y_offset = offset / GET_MODE_SIZE (ymode);
  nregs_multiple = nregs_xmode / nregs_ymode;
  return (y_offset / (mode_multiple / nregs_multiple)) * nregs_ymode;
}
