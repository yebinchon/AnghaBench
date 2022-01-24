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
struct pevent {int dummy; } ;
struct TYPE_2__ {scalar_t__ args; } ;
struct event_format {TYPE_1__ print_fmt; } ;
typedef  enum pevent_errno { ____Placeholder_pevent_errno } pevent_errno ;

/* Variables and functions */
 int PEVENT_ERRNO__MEM_ALLOC_FAILED ; 
 scalar_t__ PRINT_ARGS ; 
 int FUNC0 (struct event_format**,struct pevent*,char const*,unsigned long,char const*) ; 
 scalar_t__ FUNC1 (struct pevent*,struct event_format*) ; 
 int /*<<< orphan*/  FUNC2 (struct event_format*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

enum pevent_errno FUNC4(struct pevent *pevent, const char *buf,
				     unsigned long size, const char *sys)
{
	struct event_format *event = NULL;
	int ret = FUNC0(&event, pevent, buf, size, sys);

	if (event == NULL)
		return ret;

	if (FUNC1(pevent, event)) {
		ret = PEVENT_ERRNO__MEM_ALLOC_FAILED;
		goto event_add_failed;
	}

#define PRINT_ARGS 0
	if (PRINT_ARGS && event->print_fmt.args)
		FUNC3(event->print_fmt.args);

	return 0;

event_add_failed:
	FUNC2(event);
	return ret;
}