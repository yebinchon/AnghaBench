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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  enum direction { ____Placeholder_direction } direction ;
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ AGGREGATES_PAD_UPWARD_ALWAYS ; 
 int /*<<< orphan*/  AGGREGATE_PADDING_FIXED ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int BLKmode ; 
 scalar_t__ BYTES_BIG_ENDIAN ; 
 int FUNC1 (int,scalar_t__) ; 
 int FUNC2 (int) ; 
 scalar_t__ INTEGER_CST ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int downward ; 
 int FUNC5 (scalar_t__) ; 
 int upward ; 

enum direction
FUNC6 (enum machine_mode mode, tree type)
{
#ifndef AGGREGATE_PADDING_FIXED
#define AGGREGATE_PADDING_FIXED 0
#endif
#ifndef AGGREGATES_PAD_UPWARD_ALWAYS
#define AGGREGATES_PAD_UPWARD_ALWAYS 0
#endif

  if (!AGGREGATE_PADDING_FIXED)
    {
      /* GCC used to pass structures of the same size as integer types as
	 if they were in fact integers, ignoring FUNCTION_ARG_PADDING.
	 i.e. Structures of size 1 or 2 (or 4 when TARGET_64BIT) were
	 passed padded downward, except that -mstrict-align further
	 muddied the water in that multi-component structures of 2 and 4
	 bytes in size were passed padded upward.

	 The following arranges for best compatibility with previous
	 versions of gcc, but removes the -mstrict-align dependency.  */
      if (BYTES_BIG_ENDIAN)
	{
	  HOST_WIDE_INT size = 0;

	  if (mode == BLKmode)
	    {
	      if (type && FUNC3 (FUNC4 (type)) == INTEGER_CST)
		size = FUNC5 (type);
	    }
	  else
	    size = FUNC2 (mode);

	  if (size == 1 || size == 2 || size == 4)
	    return downward;
	}
      return upward;
    }

  if (AGGREGATES_PAD_UPWARD_ALWAYS)
    {
      if (type != 0 && FUNC0 (type))
	return upward;
    }

  /* Fall back to the default.  */
  return FUNC1 (mode, type);
}