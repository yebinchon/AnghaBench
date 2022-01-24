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
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * stdoutput ; 

void
FUNC5 (char *filename)
{
  bfd_boolean res;

  if (stdoutput == NULL)
    return;
    
  /* Close the bfd.  */
  res = FUNC2 (stdoutput);

  /* Prevent an infinite loop - if the close failed we will call as_fatal
     which will call xexit() which may call this function again...  */
  stdoutput = NULL;

  if (! res)
    FUNC1 (FUNC0("can't close %s: %s"), filename,
	      FUNC3 (FUNC4 ()));
}