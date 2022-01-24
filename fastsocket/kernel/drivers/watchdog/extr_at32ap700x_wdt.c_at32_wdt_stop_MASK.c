#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  io_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL ; 
 int /*<<< orphan*/  CTRL_KEY ; 
 int /*<<< orphan*/  CTRL_PSEL ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* wdt ; 
 unsigned long FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static inline void FUNC5(void)
{
	unsigned long psel;

	FUNC1(&wdt->io_lock);
	psel = FUNC3(wdt, CTRL) & FUNC0(CTRL_PSEL, 0x0f);
	FUNC4(wdt, CTRL, psel | FUNC0(CTRL_KEY, 0x55));
	FUNC4(wdt, CTRL, psel | FUNC0(CTRL_KEY, 0xaa));
	FUNC2(&wdt->io_lock);
}