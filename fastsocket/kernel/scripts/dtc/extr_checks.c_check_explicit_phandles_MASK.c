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
struct TYPE_2__ {int len; } ;
struct property {TYPE_1__ val; } ;
struct node {int phandle; int /*<<< orphan*/  fullpath; } ;
struct check {int dummy; } ;
typedef  int cell_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct check*,char*,int /*<<< orphan*/ ,int,...) ; 
 struct node* FUNC1 (struct node*,int) ; 
 struct property* FUNC2 (struct node*,char*) ; 
 int FUNC3 (struct property*) ; 

__attribute__((used)) static void FUNC4(struct check *c, struct node *root,
					  struct node *node)
{
	struct property *prop;
	struct node *other;
	cell_t phandle;

	prop = FUNC2(node, "linux,phandle");
	if (! prop)
		return; /* No phandle, that's fine */

	if (prop->val.len != sizeof(cell_t)) {
		FUNC0(c, "%s has bad length (%d) linux,phandle property",
		     node->fullpath, prop->val.len);
		return;
	}

	phandle = FUNC3(prop);
	if ((phandle == 0) || (phandle == -1)) {
		FUNC0(c, "%s has invalid linux,phandle value 0x%x",
		     node->fullpath, phandle);
		return;
	}

	other = FUNC1(root, phandle);
	if (other) {
		FUNC0(c, "%s has duplicated phandle 0x%x (seen before at %s)",
		     node->fullpath, phandle, other->fullpath);
		return;
	}

	node->phandle = phandle;
}