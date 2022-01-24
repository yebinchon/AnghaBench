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
struct TYPE_2__ {int /*<<< orphan*/  io_lock; scalar_t__ runtime_reg; } ;

/* Variables and functions */
 scalar_t__ GP60 ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 TYPE_1__ sch311x_wdt_data ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void)
{
	FUNC2(&sch311x_wdt_data.io_lock);

	/* stop the watchdog */
	FUNC0(0x01, sch311x_wdt_data.runtime_reg + GP60);
	/* disable timeout by setting it to 0 */
	FUNC1(0);

	FUNC3(&sch311x_wdt_data.io_lock);
}