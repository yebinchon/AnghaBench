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
struct pevent {int nr_events; struct event_format** events; } ;
struct event_list {int dummy; } ;
struct event_format {int dummy; } ;
typedef  int /*<<< orphan*/  regex_t ;

/* Variables and functions */
 int REG_ICASE ; 
 int REG_NOSUB ; 
 int /*<<< orphan*/  FUNC0 (struct event_list**,struct event_format*) ; 
 scalar_t__ FUNC1 (struct event_format*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*) ; 
 scalar_t__ FUNC7 (char*) ; 

__attribute__((used)) static int
FUNC8(struct pevent *pevent, struct event_list **events,
	   char *sys_name, char *event_name)
{
	struct event_format *event;
	regex_t ereg;
	regex_t sreg;
	int match = 0;
	char *reg;
	int ret;
	int i;

	if (!event_name) {
		/* if no name is given, then swap sys and name */
		event_name = sys_name;
		sys_name = NULL;
	}

	reg = FUNC3(FUNC7(event_name) + 3);
	FUNC6(reg, "^%s$", event_name);

	ret = FUNC4(&ereg, reg, REG_ICASE|REG_NOSUB);
	FUNC2(reg);

	if (ret)
		return -1;

	if (sys_name) {
		reg = FUNC3(FUNC7(sys_name) + 3);
		FUNC6(reg, "^%s$", sys_name);
		ret = FUNC4(&sreg, reg, REG_ICASE|REG_NOSUB);
		FUNC2(reg);
		if (ret) {
			FUNC5(&ereg);
			return -1;
		}
	}

	for (i = 0; i < pevent->nr_events; i++) {
		event = pevent->events[i];
		if (FUNC1(event, sys_name ? &sreg : NULL, &ereg)) {
			match = 1;
			FUNC0(events, event);
		}
	}

	FUNC5(&ereg);
	if (sys_name)
		FUNC5(&sreg);

	if (!match)
		return -1;

	return 0;
}