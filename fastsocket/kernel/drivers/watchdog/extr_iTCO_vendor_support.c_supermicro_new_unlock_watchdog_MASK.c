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
 int /*<<< orphan*/  SM_CTLPAGE ; 
 int /*<<< orphan*/  SM_CTLPAGESW ; 
 int /*<<< orphan*/  SM_DATAIO ; 
 int /*<<< orphan*/  SM_REGINDEX ; 
 int /*<<< orphan*/  SM_WATCHPAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(void)
{
	/* Write 0x87 to port 0x2e twice */
	FUNC0(SM_WATCHPAGE, SM_REGINDEX);
	FUNC0(SM_WATCHPAGE, SM_REGINDEX);
	/* Switch to watchdog control page */
	FUNC0(SM_CTLPAGESW, SM_REGINDEX);
	FUNC0(SM_CTLPAGE, SM_DATAIO);
}