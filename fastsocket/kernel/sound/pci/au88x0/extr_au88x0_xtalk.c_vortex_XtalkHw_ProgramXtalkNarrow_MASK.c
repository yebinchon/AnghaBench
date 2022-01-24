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
typedef  int /*<<< orphan*/  vortex_t ;

/* Variables and functions */
 int /*<<< orphan*/  asXtalkNarrowCoefsLeftEq ; 
 int /*<<< orphan*/  asXtalkNarrowCoefsLeftXt ; 
 int /*<<< orphan*/  asXtalkNarrowCoefsRightEq ; 
 int /*<<< orphan*/  sXtalkNarrowKLeftEq ; 
 int /*<<< orphan*/  sXtalkNarrowKLeftXt ; 
 int /*<<< orphan*/  sXtalkNarrowKRightEq ; 
 int /*<<< orphan*/  sXtalkNarrowShiftLeftEq ; 
 int /*<<< orphan*/  sXtalkNarrowShiftLeftXt ; 
 int /*<<< orphan*/  sXtalkNarrowShiftRightEq ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wXtalkNarrowLeftDelay ; 
 int /*<<< orphan*/  wXtalkNarrowRightDelay ; 

__attribute__((used)) static void FUNC5(vortex_t * vortex)
{

	FUNC1(vortex, sXtalkNarrowKLeftEq,
				 sXtalkNarrowShiftLeftEq,
				 asXtalkNarrowCoefsLeftEq);
	FUNC3(vortex, sXtalkNarrowKRightEq,
				  sXtalkNarrowShiftRightEq,
				  asXtalkNarrowCoefsRightEq);
	FUNC2(vortex, sXtalkNarrowKLeftXt,
				 sXtalkNarrowShiftLeftXt,
				 asXtalkNarrowCoefsLeftXt);
	FUNC4(vortex, sXtalkNarrowKLeftXt,
				  sXtalkNarrowShiftLeftXt,
				  asXtalkNarrowCoefsLeftXt);

	FUNC0(vortex, wXtalkNarrowRightDelay, wXtalkNarrowLeftDelay);	// inlined
}