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
typedef  int /*<<< orphan*/  u_long ;

/* Variables and functions */
 int /*<<< orphan*/  AMQ_VERSION ; 
 int /*<<< orphan*/  D_AMQ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(void)
{

  if (FUNC0(D_AMQ)) {
    /* find which instance of amd to unregister */
    u_long amd_prognum = FUNC2();

    if (FUNC3(amd_prognum, AMQ_VERSION) != 1)
      FUNC1("failed to de-register Amd program %lu, version %lu",
	   amd_prognum, AMQ_VERSION);
  }
}