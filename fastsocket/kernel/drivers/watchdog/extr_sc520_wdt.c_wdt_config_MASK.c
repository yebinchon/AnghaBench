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
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  wdt_spinlock ; 
 int /*<<< orphan*/  wdtmrctl ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(int writeval)
{
	__u16 dummy;
	unsigned long flags;

	/* buy some time (ping) */
	FUNC1(&wdt_spinlock, flags);
	dummy = FUNC0(wdtmrctl);	/* ensure write synchronization */
	FUNC3(0xAAAA, wdtmrctl);
	FUNC3(0x5555, wdtmrctl);
	/* unlock WDT = make WDT configuration register writable one time */
	FUNC3(0x3333, wdtmrctl);
	FUNC3(0xCCCC, wdtmrctl);
	/* write WDT configuration register */
	FUNC3(writeval, wdtmrctl);
	FUNC2(&wdt_spinlock, flags);
}