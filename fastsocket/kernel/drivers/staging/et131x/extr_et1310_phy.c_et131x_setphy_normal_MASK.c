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
struct et131x_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct et131x_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct et131x_adapter*) ; 

int FUNC2(struct et131x_adapter *adapter)
{
	int status;

	/* Make sure the PHY is powered up */
	FUNC0(adapter, 0);
	status = FUNC1(adapter);
	return status;
}