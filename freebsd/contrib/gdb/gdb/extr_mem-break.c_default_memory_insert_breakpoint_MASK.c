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
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 unsigned char* FUNC0 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

int
FUNC4 (CORE_ADDR addr, char *contents_cache)
{
  int val;
  const unsigned char *bp;
  int bplen;

  /* Determine appropriate breakpoint contents and size for this address.  */
  bp = FUNC0 (&addr, &bplen);
  if (bp == NULL)
    FUNC1 ("Software breakpoints not implemented for this target.");

  /* Save the memory contents.  */
  val = FUNC2 (addr, contents_cache, bplen);

  /* Write the breakpoint.  */
  if (val == 0)
    val = FUNC3 (addr, (char *) bp, bplen);

  return val;
}