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
struct node {int dummy; } ;
struct check {scalar_t__ level; } ;
struct boot_info {struct node* dt; } ;

/* Variables and functions */
 int FUNC0 (struct check**) ; 
 scalar_t__ IGNORE ; 
 struct check** check_table ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int quiet ; 
 scalar_t__ FUNC3 (struct check*,struct node*) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC4(int force, struct boot_info *bi)
{
	struct node *dt = bi->dt;
	int i;
	int error = 0;

	for (i = 0; i < FUNC0(check_table); i++) {
		struct check *c = check_table[i];

		if (c->level != IGNORE)
			error = error || FUNC3(c, dt);
	}

	if (error) {
		if (!force) {
			FUNC2(stderr, "ERROR: Input tree has errors, aborting "
				"(use -f to force output)\n");
			FUNC1(2);
		} else if (quiet < 3) {
			FUNC2(stderr, "Warning: Input tree has errors, "
				"output forced\n");
		}
	}
}