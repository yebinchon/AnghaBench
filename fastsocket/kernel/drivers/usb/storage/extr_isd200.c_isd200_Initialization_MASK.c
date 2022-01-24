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
struct us_data {int dummy; } ;

/* Variables and functions */
 scalar_t__ ISD200_ERROR ; 
 scalar_t__ ISD200_GOOD ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct us_data*) ; 
 scalar_t__ FUNC2 (struct us_data*) ; 

__attribute__((used)) static int FUNC3(struct us_data *us)
{
	FUNC0("ISD200 Initialization...\n");

	/* Initialize ISD200 info struct */

	if (FUNC2(us) == ISD200_ERROR) {
		FUNC0("ERROR Initializing ISD200 Info struct\n");
	} else {
		/* Get device specific data */

		if (FUNC1(us) != ISD200_GOOD)
			FUNC0("ISD200 Initialization Failure\n");
		else
			FUNC0("ISD200 Initialization complete\n");
	}

	return 0;
}