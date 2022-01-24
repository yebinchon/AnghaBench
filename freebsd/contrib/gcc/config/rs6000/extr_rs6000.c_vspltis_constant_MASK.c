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
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  scalar_t__ HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 unsigned int FUNC5 (int) ; 
 unsigned int FUNC6 (int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static bool
FUNC8 (rtx op, unsigned step, unsigned copies)
{
  enum machine_mode mode = FUNC2 (op);
  enum machine_mode inner = FUNC4 (mode);

  unsigned i;
  unsigned nunits = FUNC6 (mode);
  unsigned bitsize = FUNC3 (inner);
  unsigned mask = FUNC5 (inner);

  HOST_WIDE_INT val = FUNC7 (op, nunits - 1);
  HOST_WIDE_INT splat_val = val;
  HOST_WIDE_INT msb_val = val > 0 ? 0 : -1;

  /* Construct the value to be splatted, if possible.  If not, return 0.  */
  for (i = 2; i <= copies; i *= 2)
    {
      HOST_WIDE_INT small_val;
      bitsize /= 2;
      small_val = splat_val >> bitsize;
      mask >>= bitsize;
      if (splat_val != ((small_val << bitsize) | (small_val & mask)))
	return false;
      splat_val = small_val;
    }

  /* Check if SPLAT_VAL can really be the operand of a vspltis[bhw].  */
  if (FUNC0 (splat_val))
    ;

  /* Also check if we can splat, and then add the result to itself.  Do so if
     the value is positive, of if the splat instruction is using OP's mode;
     for splat_val < 0, the splat and the add should use the same mode.  */
  else if (FUNC1 (splat_val)
           && (splat_val >= 0 || (step == 1 && copies == 1)))
    ;

  else
    return false;

  /* Check if VAL is present in every STEP-th element, and the
     other elements are filled with its most significant bit.  */
  for (i = 0; i < nunits - 1; ++i)
    {
      HOST_WIDE_INT desired_val;
      if (((i + 1) & (step - 1)) == 0)
	desired_val = val;
      else
	desired_val = msb_val;

      if (desired_val != FUNC7 (op, i))
	return false;
    }

  return true;
}