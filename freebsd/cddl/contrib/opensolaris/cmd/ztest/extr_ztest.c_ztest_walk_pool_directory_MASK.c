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
typedef  int /*<<< orphan*/  spa_t ;
struct TYPE_2__ {int zo_verbose; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  spa_namespace_lock ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__ ztest_opts ; 

__attribute__((used)) static void
FUNC5(char *header)
{
	spa_t *spa = NULL;

	if (ztest_opts.zo_verbose >= 6)
		(void) FUNC2("%s\n", header);

	FUNC0(&spa_namespace_lock);
	while ((spa = FUNC4(spa)) != NULL)
		if (ztest_opts.zo_verbose >= 6)
			(void) FUNC2("\t%s\n", FUNC3(spa));
	FUNC1(&spa_namespace_lock);
}