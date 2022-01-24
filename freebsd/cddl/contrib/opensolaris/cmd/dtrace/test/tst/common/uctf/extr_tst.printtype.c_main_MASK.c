#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int ff_gameid; int ff_partysize; int ff_hassummons; } ;
typedef  TYPE_1__ final_fantasy_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int
FUNC4(void)
{
	final_fantasy_info_t ffiii, ffx, ffi;

	ffi.ff_gameid = 1;
	ffi.ff_partysize = 4;
	ffi.ff_hassummons = 0;

	ffiii.ff_gameid = 6;
	ffiii.ff_partysize = 4;
	ffiii.ff_hassummons = 1;

	ffx.ff_gameid = 10;
	ffx.ff_partysize = 3;
	ffx.ff_hassummons = 1;

	for (;;) {
		FUNC0(&ffi);
		FUNC1(&ffx);
		FUNC2(&ffiii);
		FUNC3(1);
	}
	/*NOTREACHED*/
	return (0);
}