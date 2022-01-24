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
typedef  int /*<<< orphan*/  rtx ;
typedef  enum mode_class { ____Placeholder_mode_class } mode_class ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int BITS_PER_UNIT ; 
 int BLKmode ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int MODE_COMPLEX_FLOAT ; 
 int MODE_FLOAT ; 
 int MODE_INT ; 
 scalar_t__ RECORD_TYPE ; 
 int SPARC_FP_ARG_FIRST ; 
 int SPARC_INCOMING_INT_ARG_FIRST ; 
 int SPARC_OUTGOING_INT_ARG_FIRST ; 
 scalar_t__ TARGET_ARCH32 ; 
 scalar_t__ TARGET_ARCH64 ; 
 scalar_t__ TARGET_FPU ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ UNION_TYPE ; 
 scalar_t__ UNITS_PER_WORD ; 
 scalar_t__ VECTOR_TYPE ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 
 int FUNC11 (scalar_t__) ; 
 int FUNC12 (int,int,int /*<<< orphan*/ ) ; 
 int word_mode ; 

rtx
FUNC13 (tree type, enum machine_mode mode, int incoming_p)
{
  /* Beware that the two values are swapped here wrt function_arg.  */
  int regbase = (incoming_p
		 ? SPARC_OUTGOING_INT_ARG_FIRST
		 : SPARC_INCOMING_INT_ARG_FIRST);
  enum mode_class mclass = FUNC1 (mode);
  int regno;

  /* Vector types deserve special treatment because they are polymorphic wrt
     their mode, depending upon whether VIS instructions are enabled.  */
  if (type && FUNC3 (type) == VECTOR_TYPE)
    {
      HOST_WIDE_INT size = FUNC11 (type);
      FUNC9 ((TARGET_ARCH32 && size <= 8)
		  || (TARGET_ARCH64 && size <= 32));

      if (mode == BLKmode)
	return FUNC8 (size,
					  FUNC5 (FUNC4 (type)),
					  SPARC_FP_ARG_FIRST);
      else
	mclass = MODE_FLOAT;
    }

  if (TARGET_ARCH64 && type)
    {
      /* Structures up to 32 bytes in size are returned in registers.  */
      if (FUNC3 (type) == RECORD_TYPE)
	{
	  HOST_WIDE_INT size = FUNC11 (type);
	  FUNC9 (size <= 32);

	  return FUNC6 (type, mode, 0, 1, regbase);
	}

      /* Unions up to 32 bytes in size are returned in integer registers.  */
      else if (FUNC3 (type) == UNION_TYPE)
	{
	  HOST_WIDE_INT size = FUNC11 (type);
	  FUNC9 (size <= 32);

	  return FUNC7 (size, mode, 0, regbase);
	}

      /* Objects that require it are returned in FP registers.  */
      else if (mclass == MODE_FLOAT || mclass == MODE_COMPLEX_FLOAT)
	;

      /* All other aggregate types are returned in an integer register in a
	 mode corresponding to the size of the type.  */
      else if (FUNC0 (type))
	{
	  /* All other aggregate types are passed in an integer register
	     in a mode corresponding to the size of the type.  */
	  HOST_WIDE_INT size = FUNC11 (type);
	  FUNC9 (size <= 32);

	  mode = FUNC12 (size * BITS_PER_UNIT, MODE_INT, 0);

	  /* ??? We probably should have made the same ABI change in
	     3.4.0 as the one we made for unions.   The latter was
	     required by the SCD though, while the former is not
	     specified, so we favored compatibility and efficiency.

	     Now we're stuck for aggregates larger than 16 bytes,
	     because OImode vanished in the meantime.  Let's not
	     try to be unduly clever, and simply follow the ABI
	     for unions in that case.  */
	  if (mode == BLKmode)
	    return FUNC7 (size, mode, 0, regbase);
	  else
	    mclass = MODE_INT;
	}

      /* This must match PROMOTE_FUNCTION_MODE.  */
      else if (mclass == MODE_INT && FUNC2 (mode) < UNITS_PER_WORD)
	mode = word_mode;
    }

  if ((mclass == MODE_FLOAT || mclass == MODE_COMPLEX_FLOAT) && TARGET_FPU)
    regno = SPARC_FP_ARG_FIRST;
  else
    regno = regbase;

  return FUNC10 (mode, regno);
}