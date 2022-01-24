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
typedef  int u32 ;
struct extif_timings {int* tim; int /*<<< orphan*/  converted; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  RFBI_CONFIG0 ; 
 int /*<<< orphan*/  RFBI_CYCLE_TIME0 ; 
 int /*<<< orphan*/  RFBI_ONOFF_TIME0 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(const struct extif_timings *t)
{
	u32 l;

	FUNC0(!t->converted);

	FUNC1(1);
	FUNC4(RFBI_ONOFF_TIME0, t->tim[0]);
	FUNC4(RFBI_CYCLE_TIME0, t->tim[1]);

	l = FUNC3(RFBI_CONFIG0);
	l &= ~(1 << 4);
	l |= (t->tim[2] ? 1 : 0) << 4;
	FUNC4(RFBI_CONFIG0, l);

	FUNC2();
	FUNC1(0);
}