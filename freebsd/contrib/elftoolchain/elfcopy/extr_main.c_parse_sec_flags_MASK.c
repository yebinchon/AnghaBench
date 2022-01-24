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
struct sec_action {int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  value; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 TYPE_1__* sec_flags ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC2 (char*,char*) ; 

__attribute__((used)) static void
FUNC3(struct sec_action *sac, char *s)
{
	const char	*flag;
	int		 found, i;

	for (flag = FUNC2(s, ","); flag; flag = FUNC2(NULL, ",")) {
		found = 0;
		for (i = 0; sec_flags[i].name != NULL; i++)
			if (FUNC1(sec_flags[i].name, flag) == 0) {
				sac->flags |= sec_flags[i].value;
				found = 1;
				break;
			}
		if (!found)
			FUNC0(EXIT_FAILURE, "unrecognized section flag %s",
			    flag);
	}
}