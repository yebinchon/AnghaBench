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
struct filter_parse_state {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FILT_ERR_INVALID_OP ; 
 int /*<<< orphan*/  FILT_ERR_OPERAND_TOO_LONG ; 
 int /*<<< orphan*/  FILT_ERR_UNBALANCED_PAREN ; 
 int OP_NONE ; 
 int OP_OPEN_PAREN ; 
 scalar_t__ FUNC0 (struct filter_parse_state*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct filter_parse_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct filter_parse_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct filter_parse_state*) ; 
 int FUNC4 (struct filter_parse_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct filter_parse_state*,int) ; 
 int FUNC6 (struct filter_parse_state*) ; 
 int FUNC7 (struct filter_parse_state*,char) ; 
 char FUNC8 (struct filter_parse_state*) ; 
 scalar_t__ FUNC9 (struct filter_parse_state*,char) ; 
 int /*<<< orphan*/  FUNC10 (struct filter_parse_state*,int,int) ; 
 scalar_t__ FUNC11 (char) ; 
 int /*<<< orphan*/  FUNC12 (struct filter_parse_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct filter_parse_state*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct filter_parse_state*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct filter_parse_state *ps)
{
	int in_string = 0;
	int op, top_op;
	char ch;

	while ((ch = FUNC8(ps))) {
		if (ch == '"') {
			in_string ^= 1;
			continue;
		}

		if (in_string)
			goto parse_operand;

		if (FUNC11(ch))
			continue;

		if (FUNC9(ps, ch)) {
			op = FUNC7(ps, ch);
			if (op == OP_NONE) {
				FUNC12(ps, FILT_ERR_INVALID_OP, 0);
				return -EINVAL;
			}

			if (FUNC15(FUNC2(ps))) {
				FUNC14(ps, FUNC2(ps));
				FUNC1(ps);
			}

			while (!FUNC3(ps)) {
				top_op = FUNC6(ps);
				if (!FUNC10(ps, top_op, op)) {
					top_op = FUNC4(ps);
					FUNC13(ps, top_op);
					continue;
				}
				break;
			}

			FUNC5(ps, op);
			continue;
		}

		if (ch == '(') {
			FUNC5(ps, OP_OPEN_PAREN);
			continue;
		}

		if (ch == ')') {
			if (FUNC15(FUNC2(ps))) {
				FUNC14(ps, FUNC2(ps));
				FUNC1(ps);
			}

			top_op = FUNC4(ps);
			while (top_op != OP_NONE) {
				if (top_op == OP_OPEN_PAREN)
					break;
				FUNC13(ps, top_op);
				top_op = FUNC4(ps);
			}
			if (top_op == OP_NONE) {
				FUNC12(ps, FILT_ERR_UNBALANCED_PAREN, 0);
				return -EINVAL;
			}
			continue;
		}
parse_operand:
		if (FUNC0(ps, ch)) {
			FUNC12(ps, FILT_ERR_OPERAND_TOO_LONG, 0);
			return -EINVAL;
		}
	}

	if (FUNC15(FUNC2(ps)))
		FUNC14(ps, FUNC2(ps));

	while (!FUNC3(ps)) {
		top_op = FUNC4(ps);
		if (top_op == OP_NONE)
			break;
		if (top_op == OP_OPEN_PAREN) {
			FUNC12(ps, FILT_ERR_UNBALANCED_PAREN, 0);
			return -EINVAL;
		}
		FUNC13(ps, top_op);
	}

	return 0;
}