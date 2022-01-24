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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ IF_THEN_ELSE ; 
 scalar_t__ NE ; 
 scalar_t__ UNSPEC ; 
 int UNSPEC_CHKACLR ; 
 int UNSPEC_CHKS ; 
 int UNSPEC_LDCCLR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4 (rtx src)
{
  if (FUNC0 (src) == IF_THEN_ELSE)
    {
      rtx t;

      t = FUNC1 (src, 0);
      if (FUNC0 (t) == NE)
	{
	  t = FUNC1 (t, 0);	    

	  if (FUNC0 (t) == UNSPEC)
	    {
	      int code;
	      
	      code = FUNC2 (t, 1);
	     
	      if (code == UNSPEC_CHKACLR
		  || code == UNSPEC_CHKS
		  || code == UNSPEC_LDCCLR)
		{
		  FUNC3 (code != 0);
		  return code;
		}
	    }
	}
    }
  return 0;
}