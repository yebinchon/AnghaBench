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
struct TYPE_2__ {int /*<<< orphan*/  wdt_lock; scalar_t__ wdt_base; } ;

/* Variables and functions */
 scalar_t__ REG_WTCR ; 
 unsigned int WTIF ; 
 unsigned int WTR ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 
 TYPE_1__* nuc900_wdt ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC4(void)
{
	unsigned int val;

	FUNC2(&nuc900_wdt->wdt_lock);

	val = FUNC0(nuc900_wdt->wdt_base + REG_WTCR);
	val |= (WTR | WTIF);
	FUNC1(val, nuc900_wdt->wdt_base + REG_WTCR);

	FUNC3(&nuc900_wdt->wdt_lock);
}