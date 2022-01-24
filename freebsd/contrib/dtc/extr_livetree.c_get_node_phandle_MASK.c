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
struct node {scalar_t__ phandle; } ;
typedef  int cell_t ;

/* Variables and functions */
 int PHANDLE_EPAPR ; 
 int PHANDLE_LEGACY ; 
 int /*<<< orphan*/  FUNC0 (struct node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  empty_data ; 
 scalar_t__ FUNC3 (struct node*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct node*,char*) ; 
 int phandle_format ; 

cell_t FUNC5(struct node *root, struct node *node)
{
	static cell_t phandle = 1; /* FIXME: ick, static local */

	if ((node->phandle != 0) && (node->phandle != -1))
		return node->phandle;

	while (FUNC3(root, phandle))
		phandle++;

	node->phandle = phandle;

	if (!FUNC4(node, "linux,phandle")
	    && (phandle_format & PHANDLE_LEGACY))
		FUNC0(node,
			     FUNC1("linux,phandle",
					    FUNC2(empty_data, phandle)));

	if (!FUNC4(node, "phandle")
	    && (phandle_format & PHANDLE_EPAPR))
		FUNC0(node,
			     FUNC1("phandle",
					    FUNC2(empty_data, phandle)));

	/* If the node *does* have a phandle property, we must
	 * be dealing with a self-referencing phandle, which will be
	 * fixed up momentarily in the caller */

	return node->phandle;
}