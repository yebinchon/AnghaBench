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
struct TYPE_2__ {int /*<<< orphan*/  value; } ;
struct filter_arg {int type; TYPE_1__ boolean; } ;
struct event_filter {int dummy; } ;

/* Variables and functions */
#define  FILTER_ARG_BOOLEAN 134 
#define  FILTER_ARG_EXP 133 
#define  FILTER_ARG_FIELD 132 
#define  FILTER_ARG_NUM 131 
#define  FILTER_ARG_OP 130 
#define  FILTER_ARG_STR 129 
#define  FILTER_ARG_VALUE 128 
 char* FUNC0 (struct event_filter*,struct filter_arg*) ; 
 char* FUNC1 (struct event_filter*,struct filter_arg*) ; 
 char* FUNC2 (int) ; 
 char* FUNC3 (struct event_filter*,struct filter_arg*) ; 
 char* FUNC4 (struct event_filter*,struct filter_arg*) ; 
 char* FUNC5 (struct event_filter*,struct filter_arg*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 char* FUNC7 (struct event_filter*,struct filter_arg*) ; 

__attribute__((used)) static char *FUNC8(struct event_filter *filter, struct filter_arg *arg)
{
	char *str;

	switch (arg->type) {
	case FILTER_ARG_BOOLEAN:
		str = FUNC2(6);
		if (arg->boolean.value)
			FUNC6(str, "TRUE");
		else
			FUNC6(str, "FALSE");
		return str;

	case FILTER_ARG_OP:
		return FUNC4(filter, arg);

	case FILTER_ARG_NUM:
		return FUNC3(filter, arg);

	case FILTER_ARG_STR:
		return FUNC5(filter, arg);

	case FILTER_ARG_VALUE:
		return FUNC7(filter, arg);

	case FILTER_ARG_FIELD:
		return FUNC1(filter, arg);

	case FILTER_ARG_EXP:
		return FUNC0(filter, arg);

	default:
		/* ?? */
		return NULL;
	}

}