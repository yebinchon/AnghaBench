#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int timeout; int /*<<< orphan*/  io_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL ; 
 int /*<<< orphan*/  CTRL_EN ; 
 int /*<<< orphan*/  CTRL_KEY ; 
 int /*<<< orphan*/  CTRL_PSEL ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* wdt ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC5(void)
{
	/* 0xf is 2^16 divider = 2 sec, 0xe is 2^15 divider = 1 sec */
	unsigned long psel = (wdt->timeout > 1) ? 0xf : 0xe;

	FUNC2(&wdt->io_lock);
	FUNC4(wdt, CTRL, FUNC1(CTRL_EN)
			| FUNC0(CTRL_PSEL, psel)
			| FUNC0(CTRL_KEY, 0x55));
	FUNC4(wdt, CTRL, FUNC1(CTRL_EN)
			| FUNC0(CTRL_PSEL, psel)
			| FUNC0(CTRL_KEY, 0xaa));
	FUNC3(&wdt->io_lock);
}