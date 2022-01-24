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
 int /*<<< orphan*/  FUNC0 (struct node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  empty_data ; 
 scalar_t__ FUNC4 (struct node*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct node*,char*) ; 

cell_t FUNC6(struct node *root, struct node *node)
{
	static cell_t phandle = 1; /* FIXME: ick, static local */

	if ((node->phandle != 0) && (node->phandle != -1))
		return node->phandle;

	FUNC1(! FUNC5(node, "linux,phandle"));

	while (FUNC4(root, phandle))
		phandle++;

	node->phandle = phandle;
	FUNC0(node,
		     FUNC2("linux,phandle",
				    FUNC3(empty_data, phandle),
				    NULL));

	return node->phandle;
}