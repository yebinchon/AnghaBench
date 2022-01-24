#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ board_type; } ;

/* Variables and functions */
 scalar_t__ CVMX_BOARD_TYPE_SIM ; 
 int /*<<< orphan*/  OCTEON_CN30XX_PASS1 ; 
 int /*<<< orphan*/  OCTEON_CN31XX_PASS1 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 () ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_1__* FUNC7 () ; 

int FUNC8(void)
{
	int num_interfaces;
	int interface;

	/* Enable IPD */
	FUNC5();

	/*
	 * Time to enable hardware ports packet input and output. Note
	 * that at this point IPD/PIP must be fully functional and PKO
	 * must be disabled
	 */
	num_interfaces = FUNC3();
	for (interface = 0; interface < num_interfaces; interface++) {
		if (FUNC4(interface) > 0)
			FUNC2(interface);
	}

	/* Finally enable PKO now that the entire path is up and running */
	FUNC6();

	if ((FUNC0(OCTEON_CN31XX_PASS1)
	     || FUNC0(OCTEON_CN30XX_PASS1))
	    && (FUNC7()->board_type != CVMX_BOARD_TYPE_SIM))
		FUNC1();
	return 0;
}