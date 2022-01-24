#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VARENT ;
struct TYPE_3__ {char* ki_args; } ;
typedef  TYPE_1__ KINFO ;

/* Variables and functions */
 size_t ARGUMENTS_WIDTH ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int VIS_NL ; 
 int VIS_NOSLASH ; 
 int VIS_TAB ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  next_ve ; 
 size_t FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 

char *
FUNC5(KINFO *k, VARENT *ve)
{
	char *vis_args;

	if ((vis_args = FUNC1(FUNC2(k->ki_args) * 4 + 1)) == NULL)
		FUNC4(1, "malloc failed");
	FUNC3(vis_args, k->ki_args, VIS_TAB | VIS_NL | VIS_NOSLASH);

	if (FUNC0(ve, next_ve) != NULL && FUNC2(vis_args) > ARGUMENTS_WIDTH)
		vis_args[ARGUMENTS_WIDTH] = '\0';

	return (vis_args);
}