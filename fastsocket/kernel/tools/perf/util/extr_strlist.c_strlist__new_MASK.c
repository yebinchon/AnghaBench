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
struct TYPE_2__ {int /*<<< orphan*/  node_delete; int /*<<< orphan*/  node_new; int /*<<< orphan*/  node_cmp; } ;
struct strlist {int dupstr; TYPE_1__ rblist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct strlist*) ; 
 struct strlist* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  strlist__node_cmp ; 
 int /*<<< orphan*/  strlist__node_delete ; 
 int /*<<< orphan*/  strlist__node_new ; 
 scalar_t__ FUNC3 (struct strlist*,char const*) ; 

struct strlist *FUNC4(bool dupstr, const char *slist)
{
	struct strlist *self = FUNC1(sizeof(*self));

	if (self != NULL) {
		FUNC2(&self->rblist);
		self->rblist.node_cmp    = strlist__node_cmp;
		self->rblist.node_new    = strlist__node_new;
		self->rblist.node_delete = strlist__node_delete;

		self->dupstr	 = dupstr;
		if (slist && FUNC3(self, slist) != 0)
			goto out_error;
	}

	return self;
out_error:
	FUNC0(self);
	return NULL;
}