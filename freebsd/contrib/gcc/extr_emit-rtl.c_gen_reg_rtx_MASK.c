#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct function {TYPE_1__* emit; } ;
typedef  char rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_2__ {int regno_pointer_align_length; unsigned char* regno_pointer_align; unsigned char* x_regno_reg_rtx; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int) ; 
 scalar_t__ MODE_COMPLEX_FLOAT ; 
 scalar_t__ MODE_COMPLEX_INT ; 
 struct function* cfun ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 char FUNC3 (int,int) ; 
 char FUNC4 (int,char,char) ; 
 scalar_t__ generating_concat_p ; 
 char* FUNC5 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  no_new_pseudos ; 
 int reg_rtx_no ; 
 char* regno_reg_rtx ; 

rtx
FUNC7 (enum machine_mode mode)
{
  struct function *f = cfun;
  rtx val;

  /* Don't let anything called after initial flow analysis create new
     registers.  */
  FUNC2 (!no_new_pseudos);

  if (generating_concat_p
      && (FUNC0 (mode) == MODE_COMPLEX_FLOAT
	  || FUNC0 (mode) == MODE_COMPLEX_INT))
    {
      /* For complex modes, don't make a single pseudo.
	 Instead, make a CONCAT of two pseudos.
	 This allows noncontiguous allocation of the real and imaginary parts,
	 which makes much better code.  Besides, allocating DCmode
	 pseudos overstrains reload on some machines like the 386.  */
      rtx realpart, imagpart;
      enum machine_mode partmode = FUNC1 (mode);

      realpart = FUNC7 (partmode);
      imagpart = FUNC7 (partmode);
      return FUNC4 (mode, realpart, imagpart);
    }

  /* Make sure regno_pointer_align, and regno_reg_rtx are large
     enough to have an element for this pseudo reg number.  */

  if (reg_rtx_no == f->emit->regno_pointer_align_length)
    {
      int old_size = f->emit->regno_pointer_align_length;
      char *new;
      rtx *new1;

      new = FUNC5 (f->emit->regno_pointer_align, old_size * 2);
      FUNC6 (new + old_size, 0, old_size);
      f->emit->regno_pointer_align = (unsigned char *) new;

      new1 = FUNC5 (f->emit->x_regno_reg_rtx,
			  old_size * 2 * sizeof (rtx));
      FUNC6 (new1 + old_size, 0, old_size * sizeof (rtx));
      regno_reg_rtx = new1;

      f->emit->regno_pointer_align_length = old_size * 2;
    }

  val = FUNC3 (mode, reg_rtx_no);
  regno_reg_rtx[reg_rtx_no++] = val;
  return val;
}