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

/* Variables and functions */
 int FUNC0 (int) ; 
 int PARM_BOUNDARY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  TARGET_64BIT ; 
 int /*<<< orphan*/  TARGET_SSE ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

int
FUNC4 (enum machine_mode mode, tree type)
{
  int align;
  if (type)
    align = FUNC2 (type);
  else
    align = FUNC0 (mode);
  if (align < PARM_BOUNDARY)
    align = PARM_BOUNDARY;
  if (!TARGET_64BIT)
    {
      /* i386 ABI defines all arguments to be 4 byte aligned.  We have to
	 make an exception for SSE modes since these require 128bit
	 alignment.

	 The handling here differs from field_alignment.  ICC aligns MMX
	 arguments to 4 byte boundaries, while structure fields are aligned
	 to 8 byte boundaries.  */
      if (!TARGET_SSE)
	align = PARM_BOUNDARY;
      else if (!type)
	{
	  if (!FUNC1 (mode))
	    align = PARM_BOUNDARY;
	}
      else
	{
	  if (!FUNC3 (type))
	    align = PARM_BOUNDARY;
	}
    }
  if (align > 128)
    align = 128;
  return align;
}