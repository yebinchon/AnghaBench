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
typedef  int /*<<< orphan*/  lithium_t ;

/* Variables and functions */
 int /*<<< orphan*/  LI_HC_LINK_ENABLE ; 
 int /*<<< orphan*/  LI_HC_RESET ; 
 int /*<<< orphan*/  LI_HOST_CONTROLLER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(lithium_t *lith)
{
	/* 1. System power supplies stabilize. */

	/* 2. Assert the ~RESET signal. */

	FUNC0(lith, LI_HOST_CONTROLLER, LI_HC_RESET);
	FUNC1(1);

	/* 3. Deassert the ~RESET signal and enter a wait period to allow
	   the AD1843 internal clocks and the external crystal oscillator
	   to stabilize. */

	FUNC0(lith, LI_HOST_CONTROLLER, LI_HC_LINK_ENABLE);
	FUNC1(1);

	return 0;
}