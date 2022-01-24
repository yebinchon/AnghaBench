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
struct node {int /*<<< orphan*/  fullpath; } ;
struct dt_info {int dummy; } ;
struct check {char* data; } ;
typedef  int /*<<< orphan*/  cell_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct check*,struct dt_info*,char*,char*,int /*<<< orphan*/ ) ; 
 struct property* FUNC1 (struct node*,char*) ; 

__attribute__((used)) static void FUNC2(struct check *c, struct dt_info *dti,
			  struct node *node)
{
	struct property *prop;
	char *propname = c->data;

	prop = FUNC1(node, propname);
	if (!prop)
		return; /* Not present, assumed ok */

	if (prop->val.len != sizeof(cell_t))
		FUNC0(c, dti, "\"%s\" property in %s is not a single cell",
		     propname, node->fullpath);
}