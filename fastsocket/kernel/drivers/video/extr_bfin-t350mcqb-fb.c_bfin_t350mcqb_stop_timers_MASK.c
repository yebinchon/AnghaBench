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
 int TIMER0bit ; 
 int TIMER1bit ; 
 int TIMER_STATUS_TIMIL0 ; 
 int TIMER_STATUS_TIMIL1 ; 
 int TIMER_STATUS_TOVF0 ; 
 int TIMER_STATUS_TOVF1 ; 
 int TIMER_STATUS_TRUN0 ; 
 int TIMER_STATUS_TRUN1 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(void)
{
	FUNC0(TIMER0bit | TIMER1bit);

	FUNC1(0, TIMER_STATUS_TRUN0 | TIMER_STATUS_TRUN1 |
				TIMER_STATUS_TIMIL0 | TIMER_STATUS_TIMIL1 |
				 TIMER_STATUS_TOVF0 | TIMER_STATUS_TOVF1);

}