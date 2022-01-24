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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  Pmode ; 
 int /*<<< orphan*/  SORR_RESTORE ; 
 int actual_fsize ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ num_gfregs ; 
 scalar_t__ sparc_leaf_function_p ; 

void
FUNC6 (void)
{
  if (num_gfregs)
    FUNC3 (SORR_RESTORE);

  if (actual_fsize == 0)
    /* do nothing.  */ ;
  else if (sparc_leaf_function_p)
    {
      if (actual_fsize <= 4096)
	FUNC1 (FUNC5 (FUNC0 (- actual_fsize)));
      else if (actual_fsize <= 8192)
	{
	  FUNC1 (FUNC5 (FUNC0 (-4096)));
	  FUNC1 (FUNC5 (FUNC0 (4096 - actual_fsize)));
	}
      else
	{
	  rtx reg = FUNC4 (Pmode, 1);
	  FUNC2 (reg, FUNC0 (-actual_fsize));
	  FUNC1 (FUNC5 (reg));
	}
    }
}