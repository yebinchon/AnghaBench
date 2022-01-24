#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int type; char* val; TYPE_1__* field; } ;
struct filter_arg {TYPE_2__ str; } ;
struct event_filter {int dummy; } ;
struct TYPE_3__ {char* name; } ;

/* Variables and functions */
#define  FILTER_CMP_MATCH 131 
#define  FILTER_CMP_NOT_MATCH 130 
#define  FILTER_CMP_NOT_REGEX 129 
#define  FILTER_CMP_REGEX 128 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*,char*,char*) ; 
 scalar_t__ FUNC2 (char*) ; 

__attribute__((used)) static char *FUNC3(struct event_filter *filter, struct filter_arg *arg)
{
	char *str = NULL;
	char *op = NULL;
	int len;

	switch (arg->str.type) {
	case FILTER_CMP_MATCH:
		op = "==";
		/* fall through */
	case FILTER_CMP_NOT_MATCH:
		if (!op)
			op = "!=";
		/* fall through */
	case FILTER_CMP_REGEX:
		if (!op)
			op = "=~";
		/* fall through */
	case FILTER_CMP_NOT_REGEX:
		if (!op)
			op = "!~";

		len = FUNC2(arg->str.field->name) + FUNC2(op) +
			FUNC2(arg->str.val) + 6;
		str = FUNC0(len);
		FUNC1(str, len, "%s %s \"%s\"",
			 arg->str.field->name,
			 op, arg->str.val);
		break;

	default:
		/* ?? */
		break;
	}
	return str;
}