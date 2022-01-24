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
struct TYPE_2__ {int type; int /*<<< orphan*/  right; int /*<<< orphan*/  left; } ;
struct filter_arg {TYPE_1__ exp; } ;
struct event_filter {int dummy; } ;

/* Variables and functions */
#define  FILTER_EXP_ADD 137 
#define  FILTER_EXP_AND 136 
#define  FILTER_EXP_DIV 135 
#define  FILTER_EXP_LSHIFT 134 
#define  FILTER_EXP_MOD 133 
#define  FILTER_EXP_MUL 132 
#define  FILTER_EXP_OR 131 
#define  FILTER_EXP_RSHIFT 130 
#define  FILTER_EXP_SUB 129 
#define  FILTER_EXP_XOR 128 
 char* FUNC0 (struct event_filter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*,char*,char*) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static char *FUNC6(struct event_filter *filter, struct filter_arg *arg)
{
	char *lstr;
	char *rstr;
	char *op;
	char *str = NULL;
	int len;

	lstr = FUNC0(filter, arg->exp.left);
	rstr = FUNC0(filter, arg->exp.right);
	if (!lstr || !rstr)
		goto out;

	switch (arg->exp.type) {
	case FILTER_EXP_ADD:
		op = "+";
		break;
	case FILTER_EXP_SUB:
		op = "-";
		break;
	case FILTER_EXP_MUL:
		op = "*";
		break;
	case FILTER_EXP_DIV:
		op = "/";
		break;
	case FILTER_EXP_MOD:
		op = "%";
		break;
	case FILTER_EXP_RSHIFT:
		op = ">>";
		break;
	case FILTER_EXP_LSHIFT:
		op = "<<";
		break;
	case FILTER_EXP_AND:
		op = "&";
		break;
	case FILTER_EXP_OR:
		op = "|";
		break;
	case FILTER_EXP_XOR:
		op = "^";
		break;
	default:
		FUNC1("oops in exp");
	}

	len = FUNC5(op) + FUNC5(lstr) + FUNC5(rstr) + 4;
	str = FUNC3(len);
	FUNC4(str, len, "%s %s %s", lstr, op, rstr);
out:
	FUNC2(lstr);
	FUNC2(rstr);

	return str;
}