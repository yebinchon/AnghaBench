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
struct dt_info {struct node* dt; } ;
struct check {int inprogress; scalar_t__ status; int num_prereqs; scalar_t__ error; int /*<<< orphan*/  name; struct check** prereq; } ;

/* Variables and functions */
 scalar_t__ PASSED ; 
 scalar_t__ PREREQ ; 
 int /*<<< orphan*/  FUNC0 (struct check*,char*,scalar_t__) ; 
 scalar_t__ UNCHECKED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct check*,struct dt_info*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct check*,struct dt_info*,struct node*) ; 

__attribute__((used)) static bool FUNC4(struct check *c, struct dt_info *dti)
{
	struct node *dt = dti->dt;
	bool error = false;
	int i;

	FUNC1(!c->inprogress);

	if (c->status != UNCHECKED)
		goto out;

	c->inprogress = true;

	for (i = 0; i < c->num_prereqs; i++) {
		struct check *prq = c->prereq[i];
		error = error || FUNC4(prq, dti);
		if (prq->status != PASSED) {
			c->status = PREREQ;
			FUNC2(c, dti, "Failed prerequisite '%s'",
				  c->prereq[i]->name);
		}
	}

	if (c->status != UNCHECKED)
		goto out;

	FUNC3(c, dti, dt);

	if (c->status == UNCHECKED)
		c->status = PASSED;

	FUNC0(c, "\tCompleted, status %d", c->status);

out:
	c->inprogress = false;
	if ((c->status != PASSED) && (c->error))
		error = true;
	return error;
}