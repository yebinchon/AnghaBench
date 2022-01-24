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
struct check {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct check*,char*) ; 
 struct node* FUNC1 (struct node*,char*) ; 
 struct property* FUNC2 (struct node*,char*) ; 

__attribute__((used)) static void FUNC3(struct check *c,
						       struct node *dt)
{
	struct node *chosen;
	struct property *prop;

	chosen = FUNC1(dt, "/chosen");
	if (!chosen)
		return;

	prop = FUNC2(chosen, "interrupt-controller");
	if (prop)
		FUNC0(c, "/chosen has obsolete \"interrupt-controller\" "
		     "property");
}