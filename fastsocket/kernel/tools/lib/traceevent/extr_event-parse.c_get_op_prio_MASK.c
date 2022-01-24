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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (char*,char*) ; 

__attribute__((used)) static int FUNC2(char *op)
{
	if (!op[1]) {
		switch (op[0]) {
		case '~':
		case '!':
			return 4;
		case '*':
		case '/':
		case '%':
			return 6;
		case '+':
		case '-':
			return 7;
			/* '>>' and '<<' are 8 */
		case '<':
		case '>':
			return 9;
			/* '==' and '!=' are 10 */
		case '&':
			return 11;
		case '^':
			return 12;
		case '|':
			return 13;
		case '?':
			return 16;
		default:
			FUNC0("unknown op '%c'", op[0]);
			return -1;
		}
	} else {
		if (FUNC1(op, "++") == 0 ||
		    FUNC1(op, "--") == 0) {
			return 3;
		} else if (FUNC1(op, ">>") == 0 ||
			   FUNC1(op, "<<") == 0) {
			return 8;
		} else if (FUNC1(op, ">=") == 0 ||
			   FUNC1(op, "<=") == 0) {
			return 9;
		} else if (FUNC1(op, "==") == 0 ||
			   FUNC1(op, "!=") == 0) {
			return 10;
		} else if (FUNC1(op, "&&") == 0) {
			return 14;
		} else if (FUNC1(op, "||") == 0) {
			return 15;
		} else {
			FUNC0("unknown op '%s'", op);
			return -1;
		}
	}
}