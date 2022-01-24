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
struct opstack_op {int op; int /*<<< orphan*/  list; } ;
struct filter_parse_state {int /*<<< orphan*/  opstack; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct opstack_op* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct filter_parse_state *ps, int op)
{
	struct opstack_op *opstack_op;

	opstack_op = FUNC0(sizeof(*opstack_op), GFP_KERNEL);
	if (!opstack_op)
		return -ENOMEM;

	opstack_op->op = op;
	FUNC1(&opstack_op->list, &ps->opstack);

	return 0;
}