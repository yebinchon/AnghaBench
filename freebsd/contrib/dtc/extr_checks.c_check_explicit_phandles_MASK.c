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
struct node {scalar_t__ phandle; int /*<<< orphan*/  fullpath; } ;
struct dt_info {struct node* dt; } ;
struct check {int dummy; } ;
typedef  scalar_t__ cell_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct check*,struct dt_info*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct check*,struct dt_info*,struct node*,char*) ; 
 struct node* FUNC3 (struct node*,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct check *c, struct dt_info *dti,
				    struct node *node)
{
	struct node *root = dti->dt;
	struct node *other;
	cell_t phandle, linux_phandle;

	/* Nothing should have assigned phandles yet */
	FUNC1(!node->phandle);

	phandle = FUNC2(c, dti, node, "phandle");

	linux_phandle = FUNC2(c, dti, node, "linux,phandle");

	if (!phandle && !linux_phandle)
		/* No valid phandles; nothing further to check */
		return;

	if (linux_phandle && phandle && (phandle != linux_phandle))
		FUNC0(c, dti, "%s has mismatching 'phandle' and 'linux,phandle'"
		     " properties", node->fullpath);

	if (linux_phandle && !phandle)
		phandle = linux_phandle;

	other = FUNC3(root, phandle);
	if (other && (other != node)) {
		FUNC0(c, dti, "%s has duplicated phandle 0x%x (seen before at %s)",
		     node->fullpath, phandle, other->fullpath);
		return;
	}

	node->phandle = phandle;
}