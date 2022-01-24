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
struct node {int /*<<< orphan*/  fullpath; } ;
struct dt_info {int dummy; } ;
struct check {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct check*,struct dt_info*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct node*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char) ; 

__attribute__((used)) static void FUNC3(struct check *c, struct dt_info *dti,
				   struct node *node)
{
	if (FUNC2(FUNC1(node), '@'))
		FUNC0(c, dti, "Node %s has multiple '@' characters in name",
		     node->fullpath);
}