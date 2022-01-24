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

/* Variables and functions */
 int /*<<< orphan*/  WDT_EFDR ; 
 int /*<<< orphan*/  WDT_EFER ; 
 int /*<<< orphan*/  io_lock ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(int timeout)
{
	FUNC1(&io_lock);

	FUNC3();

	FUNC0(0xF6, WDT_EFER);    /* Select CRF6 */
	FUNC0(timeout, WDT_EFDR); /* Write Timeout counter to CRF6 */

	FUNC4();

	FUNC2(&io_lock);
}