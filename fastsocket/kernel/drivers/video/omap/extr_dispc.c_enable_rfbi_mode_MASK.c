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

/* Variables and functions */
 int /*<<< orphan*/  DISPC_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RFBI_CONTROL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(int enable)
{
	u32 l;

	l = FUNC3(DISPC_CONTROL);
	/* Enable RFBI, GPIO0/1 */
	l &= ~((1 << 11) | (1 << 15) | (1 << 16));
	l |= enable ? (1 << 11) : 0;
	/* RFBI En: GPIO0/1=10  RFBI Dis: GPIO0/1=11 */
	l |= 1 << 15;
	l |= enable ? 0 : (1 << 16);
	FUNC4(DISPC_CONTROL, l);

	/* Set bypass mode in RFBI module */
	l = FUNC1(FUNC0(RFBI_CONTROL));
	l |= enable ? 0 : (1 << 1);
	FUNC2(l, FUNC0(RFBI_CONTROL));
}