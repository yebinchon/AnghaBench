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
struct TYPE_2__ {int /*<<< orphan*/  pattern; int /*<<< orphan*/  len; } ;
struct filter_pred {int op; TYPE_1__ regex; int /*<<< orphan*/  field_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct filter_pred*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 struct filter_pred* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct filter_pred *FUNC5(int op, char *operand1, char *operand2)
{
	struct filter_pred *pred;

	pred = FUNC2(sizeof(*pred), GFP_KERNEL);
	if (!pred)
		return NULL;

	pred->field_name = FUNC1(operand1, GFP_KERNEL);
	if (!pred->field_name) {
		FUNC0(pred);
		return NULL;
	}

	FUNC3(pred->regex.pattern, operand2);
	pred->regex.len = FUNC4(pred->regex.pattern);

	pred->op = op;

	return pred;
}