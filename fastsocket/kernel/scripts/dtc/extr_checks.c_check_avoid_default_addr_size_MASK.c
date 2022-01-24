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
struct property {int dummy; } ;
struct node {int /*<<< orphan*/  fullpath; TYPE_1__* parent; } ;
struct check {int dummy; } ;
struct TYPE_2__ {int addr_cells; int size_cells; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct check*,char*,int /*<<< orphan*/ ) ; 
 struct property* FUNC1 (struct node*,char*) ; 

__attribute__((used)) static void FUNC2(struct check *c, struct node *dt,
					  struct node *node)
{
	struct property *reg, *ranges;

	if (!node->parent)
		return; /* Ignore root node */

	reg = FUNC1(node, "reg");
	ranges = FUNC1(node, "ranges");

	if (!reg && !ranges)
		return;

	if (node->parent->addr_cells == -1)
		FUNC0(c, "Relying on default #address-cells value for %s",
		     node->fullpath);

	if (node->parent->size_cells == -1)
		FUNC0(c, "Relying on default #size-cells value for %s",
		     node->fullpath);
}