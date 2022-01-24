#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ BYTES_BIG_ENDIAN ; 
 unsigned int FIRST_PSEUDO_REGISTER ; 
 unsigned int FUNC0 (int) ; 
 scalar_t__ FUNC1 (unsigned int,int) ; 
 int FUNC2 (unsigned int,int) ; 
 unsigned int UNITS_PER_WORD ; 
 scalar_t__ WORDS_BIG_ENDIAN ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int** hard_regno_nregs ; 

unsigned int
FUNC4 (unsigned int xregno, enum machine_mode xmode,
		     unsigned int offset, enum machine_mode ymode)
{
  int nregs_xmode, nregs_ymode;
  int mode_multiple, nregs_multiple;
  int y_offset;

  FUNC3 (xregno < FIRST_PSEUDO_REGISTER);

  /* Adjust nregs_xmode to allow for 'holes'.  */
  if (FUNC1 (xregno, xmode))
    nregs_xmode = FUNC2 (xregno, xmode);
  else
    nregs_xmode = hard_regno_nregs[xregno][xmode];
    
  nregs_ymode = hard_regno_nregs[xregno][ymode];

  /* If this is a big endian paradoxical subreg, which uses more actual
     hard registers than the original register, we must return a negative
     offset so that we find the proper highpart of the register.  */
  if (offset == 0
      && nregs_ymode > nregs_xmode
      && (FUNC0 (ymode) > UNITS_PER_WORD
	  ? WORDS_BIG_ENDIAN : BYTES_BIG_ENDIAN))
    return nregs_xmode - nregs_ymode;

  if (offset == 0 || nregs_xmode == nregs_ymode)
    return 0;

  /* Size of ymode must not be greater than the size of xmode.  */
  mode_multiple = FUNC0 (xmode) / FUNC0 (ymode);
  FUNC3 (mode_multiple != 0);

  y_offset = offset / FUNC0 (ymode);
  nregs_multiple =  nregs_xmode / nregs_ymode;
  return (y_offset / (mode_multiple / nregs_multiple)) * nregs_ymode;
}