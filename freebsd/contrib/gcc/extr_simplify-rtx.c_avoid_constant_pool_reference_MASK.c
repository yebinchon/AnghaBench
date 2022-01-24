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
typedef  scalar_t__ rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_2__ {scalar_t__ (* delegitimize_address ) (scalar_t__) ;} ;
typedef  int /*<<< orphan*/  REAL_VALUE_TYPE ;
typedef  scalar_t__ HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ CONST ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ CONST_DOUBLE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ CONST_INT ; 
#define  FLOAT_EXTEND 129 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ LO_SUM ; 
#define  MEM 128 
 scalar_t__ PLUS ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ SYMBOL_REF ; 
 scalar_t__ FUNC7 (scalar_t__,int) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (int,scalar_t__,int,scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 TYPE_1__ targetm ; 

rtx
FUNC12 (rtx x)
{
  rtx c, tmp, addr;
  enum machine_mode cmode;
  HOST_WIDE_INT offset = 0;

  switch (FUNC3 (x))
    {
    case MEM:
      break;

    case FLOAT_EXTEND:
      /* Handle float extensions of constant pool references.  */
      tmp = FUNC7 (x, 0);
      c = FUNC12 (tmp);
      if (c != tmp && FUNC3 (c) == CONST_DOUBLE)
	{
	  REAL_VALUE_TYPE d;

	  FUNC6 (d, c);
	  return FUNC2 (d, FUNC4 (x));
	}
      return x;

    default:
      return x;
    }

  addr = FUNC7 (x, 0);

  /* Call target hook to avoid the effects of -fpic etc....  */
  addr = targetm.delegitimize_address (addr);

  /* Split the address into a base and integer offset.  */
  if (FUNC3 (addr) == CONST
      && FUNC3 (FUNC7 (addr, 0)) == PLUS
      && FUNC3 (FUNC7 (FUNC7 (addr, 0), 1)) == CONST_INT)
    {
      offset = FUNC5 (FUNC7 (FUNC7 (addr, 0), 1));
      addr = FUNC7 (FUNC7 (addr, 0), 0);
    }

  if (FUNC3 (addr) == LO_SUM)
    addr = FUNC7 (addr, 1);

  /* If this is a constant pool reference, we can turn it into its
     constant and hope that simplifications happen.  */
  if (FUNC3 (addr) == SYMBOL_REF
      && FUNC1 (addr))
    {
      c = FUNC8 (addr);
      cmode = FUNC9 (addr);

      /* If we're accessing the constant in a different mode than it was
         originally stored, attempt to fix that up via subreg simplifications.
         If that fails we have no choice but to return the original memory.  */
      if (offset != 0 || cmode != FUNC4 (x))
        {
          rtx tem = FUNC10 (FUNC4 (x), c, cmode, offset);
          if (tem && FUNC0 (tem))
            return tem;
        }
      else
        return c;
    }

  return x;
}