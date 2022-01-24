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
struct TYPE_2__ {int /*<<< orphan*/  wtmr; } ;

/* Variables and functions */
 int TXx9_TMWTMR_TWC ; 
 int TXx9_TMWTMR_TWIE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  txx9_lock ; 
 TYPE_1__* txx9wdt_reg ; 

__attribute__((used)) static void FUNC3(void)
{
	FUNC1(&txx9_lock);
	FUNC0(TXx9_TMWTMR_TWIE | TXx9_TMWTMR_TWC, &txx9wdt_reg->wtmr);
	FUNC2(&txx9_lock);
}