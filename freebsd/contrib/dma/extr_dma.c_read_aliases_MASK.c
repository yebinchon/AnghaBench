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
struct TYPE_2__ {int /*<<< orphan*/  aliases; } ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 TYPE_1__ config ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * yyin ; 
 scalar_t__ FUNC2 () ; 

__attribute__((used)) static int
FUNC3(void)
{
	yyin = FUNC1(config.aliases, "r");
	if (yyin == NULL) {
		/*
		 * Non-existing aliases file is not a fatal error
		 */
		if (errno == ENOENT)
			return (0);
		/* Other problems are. */
		return (-1);
	}
	if (FUNC2())
		return (-1);	/* fatal error, probably malloc() */
	FUNC0(yyin);
	return (0);
}