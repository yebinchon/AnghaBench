#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int type; struct filter_arg* right; struct filter_arg* left; } ;
struct TYPE_15__ {int type; TYPE_6__* field; int /*<<< orphan*/ * buffer; int /*<<< orphan*/  val; int /*<<< orphan*/  reg; } ;
struct TYPE_13__ {TYPE_6__* field; } ;
struct TYPE_12__ {int /*<<< orphan*/  value; } ;
struct TYPE_11__ {int type; char* str; } ;
struct TYPE_10__ {struct filter_arg* right; } ;
struct TYPE_9__ {struct filter_arg* right; } ;
struct filter_arg {int type; TYPE_8__ num; TYPE_7__ str; TYPE_5__ field; TYPE_4__ boolean; TYPE_3__ value; TYPE_2__ op; TYPE_1__ exp; } ;
struct TYPE_14__ {size_t size; } ;

/* Variables and functions */
 int FILTER_ARG_BOOLEAN ; 
#define  FILTER_ARG_EXP 139 
#define  FILTER_ARG_FIELD 138 
#define  FILTER_ARG_NUM 137 
#define  FILTER_ARG_OP 136 
 int const FILTER_ARG_STR ; 
#define  FILTER_ARG_VALUE 135 
#define  FILTER_CHAR 134 
#define  FILTER_CMP_EQ 133 
 int FILTER_CMP_MATCH ; 
#define  FILTER_CMP_NE 132 
 int FILTER_CMP_NOT_MATCH ; 
#define  FILTER_CMP_NOT_REGEX 131 
#define  FILTER_CMP_REGEX 130 
 int /*<<< orphan*/  FILTER_FALSE ; 
#define  FILTER_NUMBER 129 
#define  FILTER_STRING 128 
 int REG_ICASE ; 
 int REG_NOSUB ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct filter_arg*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct filter_arg*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char**,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(struct filter_arg *op, struct filter_arg *arg,
		     char **error_str)
{
	struct filter_arg *left;
	char *str;
	int op_type;
	int ret;

	switch (op->type) {
	case FILTER_ARG_EXP:
		if (op->exp.right)
			goto out_fail;
		op->exp.right = arg;
		break;

	case FILTER_ARG_OP:
		if (op->op.right)
			goto out_fail;
		op->op.right = arg;
		break;

	case FILTER_ARG_NUM:
		if (op->op.right)
			goto out_fail;
		/*
		 * The arg must be num, str, or field
		 */
		switch (arg->type) {
		case FILTER_ARG_VALUE:
		case FILTER_ARG_FIELD:
			break;
		default:
			FUNC5(error_str,
				   "Illegal rvalue");
			return -1;
		}

		/*
		 * Depending on the type, we may need to
		 * convert this to a string or regex.
		 */
		switch (arg->value.type) {
		case FILTER_CHAR:
			/*
			 * A char should be converted to number if
			 * the string is 1 byte, and the compare
			 * is not a REGEX.
			 */
			if (FUNC7(arg->value.str) == 1 &&
			    op->num.type != FILTER_CMP_REGEX &&
			    op->num.type != FILTER_CMP_NOT_REGEX) {
				arg->value.type = FILTER_NUMBER;
				goto do_int;
			}
			/* fall through */
		case FILTER_STRING:

			/* convert op to a string arg */
			op_type = op->num.type;
			left = op->num.left;
			str = arg->value.str;

			/* reset the op for the new field */
			FUNC3(op, 0, sizeof(*op));

			/*
			 * If left arg was a field not found then
			 * NULL the entire op.
			 */
			if (left->type == FILTER_ARG_BOOLEAN) {
				FUNC1(left);
				FUNC1(arg);
				op->type = FILTER_ARG_BOOLEAN;
				op->boolean.value = FILTER_FALSE;
				break;
			}

			/* Left arg must be a field */
			if (left->type != FILTER_ARG_FIELD) {
				FUNC5(error_str,
					   "Illegal lvalue for string comparison");
				return -1;
			}

			/* Make sure this is a valid string compare */
			switch (op_type) {
			case FILTER_CMP_EQ:
				op_type = FILTER_CMP_MATCH;
				break;
			case FILTER_CMP_NE:
				op_type = FILTER_CMP_NOT_MATCH;
				break;

			case FILTER_CMP_REGEX:
			case FILTER_CMP_NOT_REGEX:
				ret = FUNC4(&op->str.reg, str, REG_ICASE|REG_NOSUB);
				if (ret) {
					FUNC5(error_str,
						   "RegEx '%s' did not compute",
						   str);
					return -1;
				}
				break;
			default:
				FUNC5(error_str,
					   "Illegal comparison for string");
				return -1;
			}

			op->type = FILTER_ARG_STR;
			op->str.type = op_type;
			op->str.field = left->field.field;
			op->str.val = FUNC6(str);
			if (!op->str.val)
				FUNC0("malloc string");
			/*
			 * Need a buffer to copy data for tests
			 */
			op->str.buffer = FUNC2(op->str.field->size + 1);
			/* Null terminate this buffer */
			op->str.buffer[op->str.field->size] = 0;

			/* We no longer have left or right args */
			FUNC1(arg);
			FUNC1(left);

			break;

		case FILTER_NUMBER:

 do_int:
			switch (op->num.type) {
			case FILTER_CMP_REGEX:
			case FILTER_CMP_NOT_REGEX:
				FUNC5(error_str,
					   "Op not allowed with integers");
				return -1;

			default:
				break;
			}

			/* numeric compare */
			op->num.right = arg;
			break;
		default:
			goto out_fail;
		}
		break;
	default:
		goto out_fail;
	}

	return 0;

 out_fail:
	FUNC5(error_str,
		   "Syntax error");
	return -1;
}