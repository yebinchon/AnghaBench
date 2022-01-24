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
struct node {int dummy; } ;
struct dt_info {struct node* dt; } ;
struct check {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct check*,struct dt_info*,char*) ; 
 struct node* FUNC1 (struct node*,char*) ; 
 struct property* FUNC2 (struct node*,char*) ; 

__attribute__((used)) static void FUNC3(struct check *c,
						       struct dt_info *dti,
						       struct node *node)
{
	struct node *dt = dti->dt;
	struct node *chosen;
	struct property *prop;

	if (node != dt)
		return;


	chosen = FUNC1(dt, "/chosen");
	if (!chosen)
		return;

	prop = FUNC2(chosen, "interrupt-controller");
	if (prop)
		FUNC0(c, dti, "/chosen has obsolete \"interrupt-controller\" "
		     "property");
}