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
struct property {int dummy; } ;
struct node {int addr_cells; int size_cells; } ;
struct dt_info {int dummy; } ;
struct check {int dummy; } ;

/* Variables and functions */
 struct property* FUNC0 (struct node*,char*) ; 
 void* FUNC1 (struct property*) ; 

__attribute__((used)) static void FUNC2(struct check *c, struct dt_info *dti,
				  struct node *node)
{
	struct property *prop;

	node->addr_cells = -1;
	node->size_cells = -1;

	prop = FUNC0(node, "#address-cells");
	if (prop)
		node->addr_cells = FUNC1(prop);

	prop = FUNC0(node, "#size-cells");
	if (prop)
		node->size_cells = FUNC1(prop);
}