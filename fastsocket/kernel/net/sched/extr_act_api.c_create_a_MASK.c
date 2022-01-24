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
struct tc_action {int order; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct tc_action* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static struct tc_action *FUNC2(int i)
{
	struct tc_action *act;

	act = FUNC0(sizeof(*act), GFP_KERNEL);
	if (act == NULL) {
		FUNC1("create_a: failed to alloc!\n");
		return NULL;
	}
	act->order = i;
	return act;
}