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
typedef  scalar_t__ tree ;
struct sparc_args {int words; } ;
typedef  enum mode_class { ____Placeholder_mode_class } mode_class ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int BLKmode ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
#define  MODE_COMPLEX_FLOAT 132 
#define  MODE_COMPLEX_INT 131 
#define  MODE_FLOAT 130 
#define  MODE_INT 129 
#define  MODE_RANDOM 128 
 int PARM_BOUNDARY ; 
 scalar_t__ REAL_TYPE ; 
 scalar_t__ RECORD_TYPE ; 
 int /*<<< orphan*/  SPARC_FP_ARG_FIRST ; 
 int SPARC_FP_ARG_MAX ; 
 int SPARC_INCOMING_INT_ARG_FIRST ; 
 int SPARC_INT_ARG_MAX ; 
 int SPARC_OUTGOING_INT_ARG_FIRST ; 
 scalar_t__ TARGET_ARCH32 ; 
 scalar_t__ TARGET_ARCH64 ; 
 int /*<<< orphan*/  TARGET_FPU ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 
 scalar_t__ VECTOR_TYPE ; 
 int VOIDmode ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int*,int*,int*) ; 

__attribute__((used)) static int
FUNC10 (const struct sparc_args *cum, enum machine_mode mode,
		     tree type, int named, int incoming_p,
		     int *pregno, int *ppadding)
{
  int regbase = (incoming_p
		 ? SPARC_INCOMING_INT_ARG_FIRST
		 : SPARC_OUTGOING_INT_ARG_FIRST);
  int slotno = cum->words;
  enum mode_class mclass;
  int regno;

  *ppadding = 0;

  if (type && FUNC3 (type))
    return -1;

  if (TARGET_ARCH32
      && mode == BLKmode
      && type
      && FUNC6 (type) % PARM_BOUNDARY != 0)
    return -1;

  /* For SPARC64, objects requiring 16-byte alignment get it.  */
  if (TARGET_ARCH64
      && (type ? FUNC6 (type) : FUNC0 (mode)) >= 128
      && (slotno & 1) != 0)
    slotno++, *ppadding = 1;

  mclass = FUNC1 (mode);
  if (type && FUNC4 (type) == VECTOR_TYPE)
    {
      /* Vector types deserve special treatment because they are
	 polymorphic wrt their mode, depending upon whether VIS
	 instructions are enabled.  */
      if (FUNC4 (FUNC5 (type)) == REAL_TYPE)
	{
	  /* The SPARC port defines no floating-point vector modes.  */
	  FUNC7 (mode == BLKmode);
	}
      else
	{
	  /* Integral vector types should either have a vector
	     mode or an integral mode, because we are guaranteed
	     by pass_by_reference that their size is not greater
	     than 16 bytes and TImode is 16-byte wide.  */
	  FUNC7 (mode != BLKmode);

	  /* Vector integers are handled like floats according to
	     the Sun VIS SDK.  */
	  mclass = MODE_FLOAT;
	}
    }

  switch (mclass)
    {
    case MODE_FLOAT:
    case MODE_COMPLEX_FLOAT:
      if (TARGET_ARCH64 && TARGET_FPU && named)
	{
	  if (slotno >= SPARC_FP_ARG_MAX)
	    return -1;
	  regno = SPARC_FP_ARG_FIRST + slotno * 2;
	  /* Arguments filling only one single FP register are
	     right-justified in the outer double FP register.  */
	  if (FUNC2 (mode) <= 4)
	    regno++;
	  break;
	}
      /* fallthrough */

    case MODE_INT:
    case MODE_COMPLEX_INT:
      if (slotno >= SPARC_INT_ARG_MAX)
	return -1;
      regno = regbase + slotno;
      break;

    case MODE_RANDOM:
      if (mode == VOIDmode)
	/* MODE is VOIDmode when generating the actual call.  */
	return -1;

      FUNC7 (mode == BLKmode);

      if (TARGET_ARCH32
	  || !type
	  || (FUNC4 (type) != VECTOR_TYPE
	      && FUNC4 (type) != RECORD_TYPE))
	{
	  if (slotno >= SPARC_INT_ARG_MAX)
	    return -1;
	  regno = regbase + slotno;
	}
      else  /* TARGET_ARCH64 && type */
	{
	  int intregs_p = 0, fpregs_p = 0, packed_p = 0;

	  /* First see what kinds of registers we would need.  */
	  if (FUNC4 (type) == VECTOR_TYPE)
	    fpregs_p = 1;
	  else
	    FUNC9 (type, &intregs_p, &fpregs_p, &packed_p);

	  /* The ABI obviously doesn't specify how packed structures
	     are passed.  These are defined to be passed in int regs
	     if possible, otherwise memory.  */
	  if (packed_p || !named)
	    fpregs_p = 0, intregs_p = 1;

	  /* If all arg slots are filled, then must pass on stack.  */
	  if (fpregs_p && slotno >= SPARC_FP_ARG_MAX)
	    return -1;

	  /* If there are only int args and all int arg slots are filled,
	     then must pass on stack.  */
	  if (!fpregs_p && intregs_p && slotno >= SPARC_INT_ARG_MAX)
	    return -1;

	  /* Note that even if all int arg slots are filled, fp members may
	     still be passed in regs if such regs are available.
	     *PREGNO isn't set because there may be more than one, it's up
	     to the caller to compute them.  */
	  return slotno;
	}
      break;

    default :
      FUNC8 ();
    }

  *pregno = regno;
  return slotno;
}