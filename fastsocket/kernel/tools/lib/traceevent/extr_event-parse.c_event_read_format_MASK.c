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
struct TYPE_2__ {int nr_common; int nr_fields; int /*<<< orphan*/  fields; int /*<<< orphan*/  common_fields; } ;
struct event_format {TYPE_1__ format; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_ITEM ; 
 int /*<<< orphan*/  EVENT_NEWLINE ; 
 int /*<<< orphan*/  EVENT_OP ; 
 int FUNC0 (struct event_format*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct event_format *event)
{
	char *token;
	int ret;

	if (FUNC4(EVENT_ITEM, "format") < 0)
		return -1;

	if (FUNC3(EVENT_OP, ":") < 0)
		return -1;

	if (FUNC2(EVENT_NEWLINE, &token))
		goto fail;
	FUNC1(token);

	ret = FUNC0(event, &event->format.common_fields);
	if (ret < 0)
		return ret;
	event->format.nr_common = ret;

	ret = FUNC0(event, &event->format.fields);
	if (ret < 0)
		return ret;
	event->format.nr_fields = ret;

	return 0;

 fail:
	FUNC1(token);
	return -1;
}