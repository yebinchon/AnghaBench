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
struct property {int /*<<< orphan*/  name; } ;
struct node {int /*<<< orphan*/  fullpath; } ;
struct marker {scalar_t__ type; int /*<<< orphan*/  ref; int /*<<< orphan*/  offset; } ;
struct dt_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ REF_PHANDLE ; 
 int /*<<< orphan*/  FUNC0 (struct node*,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct dt_info *dti, struct node *fn,
			    struct node *node, struct property *prop,
			    struct marker *m)
{
	char *entry;

	/* m->ref can only be a REF_PHANDLE, but check anyway */
	FUNC1(m->type == REF_PHANDLE);

	/* there shouldn't be any ':' in the arguments */
	if (FUNC4(node->fullpath, ':') || FUNC4(prop->name, ':'))
		FUNC2("arguments should not contain ':'\n");

	FUNC6(&entry, "%s:%s:%u",
			node->fullpath, prop->name, m->offset);
	FUNC0(fn, m->ref, entry, FUNC5(entry) + 1);

	FUNC3(entry);
}