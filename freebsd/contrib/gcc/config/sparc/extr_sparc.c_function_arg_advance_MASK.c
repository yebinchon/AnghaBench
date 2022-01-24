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
struct sparc_args {scalar_t__ words; } ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int BLKmode ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ TARGET_ARCH32 ; 
 int FUNC3 (struct sparc_args*,int,scalar_t__,int,int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC4 (scalar_t__) ; 

void
FUNC5 (struct sparc_args *cum, enum machine_mode mode,
		      tree type, int named)
{
  int slotno, regno, padding;

  /* We pass 0 for incoming_p here, it doesn't matter.  */
  slotno = FUNC3 (cum, mode, type, named, 0, &regno, &padding);

  /* If register required leading padding, add it.  */
  if (slotno != -1)
    cum->words += padding;

  if (TARGET_ARCH32)
    {
      cum->words += (mode != BLKmode
		     ? FUNC2 (FUNC1 (mode))
		     : FUNC2 (FUNC4 (type)));
    }
  else
    {
      if (type && FUNC0 (type))
	{
	  int size = FUNC4 (type);

	  if (size <= 8)
	    ++cum->words;
	  else if (size <= 16)
	    cum->words += 2;
	  else /* passed by reference */
	    ++cum->words;
	}
      else
	{
	  cum->words += (mode != BLKmode
			 ? FUNC2 (FUNC1 (mode))
			 : FUNC2 (FUNC4 (type)));
	}
    }
}