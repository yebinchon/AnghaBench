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

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FIELD_DECL ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ RECORD_TYPE ; 
 scalar_t__ TARGET_FPU ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ VECTOR_TYPE ; 

__attribute__((used)) static void
FUNC6 (tree type, int *intregs_p, int *fpregs_p, int *packed_p)
{
  tree field;

  for (field = FUNC5 (type); field; field = FUNC2 (field))
    {
      if (FUNC3 (field) == FIELD_DECL)
	{
	  if (FUNC3 (FUNC4 (field)) == RECORD_TYPE)
	    FUNC6 (FUNC4 (field), intregs_p, fpregs_p, 0);
	  else if ((FUNC1 (FUNC4 (field))
		   || FUNC3 (FUNC4 (field)) == VECTOR_TYPE)
		  && TARGET_FPU)
	    *fpregs_p = 1;
	  else
	    *intregs_p = 1;

	  if (packed_p && FUNC0 (field))
	    *packed_p = 1;
	}
    }
}