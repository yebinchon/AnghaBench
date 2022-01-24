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
struct property {int /*<<< orphan*/  val; } ;
struct node {int /*<<< orphan*/  fullpath; } ;
struct check {char* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct check*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct property* FUNC2 (struct node*,char*) ; 

__attribute__((used)) static void FUNC3(struct check *c, struct node *root,
			    struct node *node)
{
	struct property *prop;
	char *propname = c->data;

	prop = FUNC2(node, propname);
	if (!prop)
		return; /* Not present, assumed ok */

	if (!FUNC1(prop->val))
		FUNC0(c, "\"%s\" property in %s is not a string",
		     propname, node->fullpath);
}