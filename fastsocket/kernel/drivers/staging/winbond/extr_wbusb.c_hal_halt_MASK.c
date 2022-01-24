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
struct hw_data {int /*<<< orphan*/  LEDTimer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hw_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct hw_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct hw_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct hw_data *pHwData)
{
	FUNC3(&pHwData->LEDTimer);
	/* XXX: Wait for Timer DPC exit. */
	FUNC4(100);
	FUNC1(pHwData);
	FUNC2(pHwData);
	FUNC0(pHwData);
}