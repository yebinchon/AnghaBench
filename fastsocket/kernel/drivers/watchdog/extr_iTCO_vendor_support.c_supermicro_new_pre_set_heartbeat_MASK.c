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
 int /*<<< orphan*/  SM_DATAIO ; 
 int /*<<< orphan*/  SM_REGINDEX ; 
 unsigned int SM_WATCHTIMER ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(unsigned int heartbeat)
{
	FUNC2();

	/* reset watchdog timeout to heartveat value */
	FUNC0(SM_WATCHTIMER, SM_REGINDEX);
	FUNC0((heartbeat & 255), SM_DATAIO);

	FUNC1();
}