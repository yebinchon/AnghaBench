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
struct filter_arg {TYPE_1__ op; } ;
struct event_filter {int dummy; } ;

/* Variables and functions */
#define  FILTER_OP_AND 130 
#define  FILTER_OP_NOT 129 
#define  FILTER_OP_OR 128 
 char* FUNC0 (struct event_filter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (char*) ; 

__attribute__((used)) static char *FUNC7(struct event_filter *filter, struct filter_arg *arg)
{
	char *str = NULL;
	char *left = NULL;
	char *right = NULL;
	char *op = NULL;
	int left_val = -1;
	int right_val = -1;
	int val;
	int len;

	switch (arg->op.type) {
	case FILTER_OP_AND:
		op = "&&";
		/* fall through */
	case FILTER_OP_OR:
		if (!op)
			op = "||";

		left = FUNC0(filter, arg->op.left);
		right = FUNC0(filter, arg->op.right);
		if (!left || !right)
			break;

		/* Try to consolidate boolean values */
		if (FUNC4(left, "TRUE") == 0)
			left_val = 1;
		else if (FUNC4(left, "FALSE") == 0)
			left_val = 0;

		if (FUNC4(right, "TRUE") == 0)
			right_val = 1;
		else if (FUNC4(right, "FALSE") == 0)
			right_val = 0;

		if (left_val >= 0) {
			if ((arg->op.type == FILTER_OP_AND && !left_val) ||
			    (arg->op.type == FILTER_OP_OR && left_val)) {
				/* Just return left value */
				str = left;
				left = NULL;
				break;
			}
			if (right_val >= 0) {
				/* just evaluate this. */
				val = 0;
				switch (arg->op.type) {
				case FILTER_OP_AND:
					val = left_val && right_val;
					break;
				case FILTER_OP_OR:
					val = left_val || right_val;
					break;
				default:
					break;
				}
				str = FUNC2(6);
				if (val)
					FUNC5(str, "TRUE");
				else
					FUNC5(str, "FALSE");
				break;
			}
		}
		if (right_val >= 0) {
			if ((arg->op.type == FILTER_OP_AND && !right_val) ||
			    (arg->op.type == FILTER_OP_OR && right_val)) {
				/* Just return right value */
				str = right;
				right = NULL;
				break;
			}
			/* The right value is meaningless */
			str = left;
			left = NULL;
			break;
		}

		len = FUNC6(left) + FUNC6(right) + FUNC6(op) + 10;
		str = FUNC2(len);
		FUNC3(str, len, "(%s) %s (%s)",
			 left, op, right);
		break;

	case FILTER_OP_NOT:
		op = "!";
		right = FUNC0(filter, arg->op.right);
		if (!right)
			break;

		/* See if we can consolidate */
		if (FUNC4(right, "TRUE") == 0)
			right_val = 1;
		else if (FUNC4(right, "FALSE") == 0)
			right_val = 0;
		if (right_val >= 0) {
			/* just return the opposite */
			str = FUNC2(6);
			if (right_val)
				FUNC5(str, "FALSE");
			else
				FUNC5(str, "TRUE");
			break;
		}
		len = FUNC6(right) + FUNC6(op) + 3;
		str = FUNC2(len);
		FUNC3(str, len, "%s(%s)", op, right);
		break;

	default:
		/* ?? */
		break;
	}
	FUNC1(left);
	FUNC1(right);
	return str;
}