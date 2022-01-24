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
struct publication {int key; int /*<<< orphan*/  ref; int /*<<< orphan*/  node; int /*<<< orphan*/  lower; int /*<<< orphan*/  type; int /*<<< orphan*/  upper; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct publication*) ; 
 int /*<<< orphan*/  tipc_nametbl_lock ; 
 struct publication* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct publication *publ)
{
	struct publication *p;

	FUNC4(&tipc_nametbl_lock);
	FUNC0("node_is_down: withdrawing %u, %u, %u\n",
	    publ->type, publ->lower, publ->upper);
	publ->key += 1222345;
	p = FUNC3(publ->type, publ->lower,
				     publ->node, publ->ref, publ->key);
	FUNC5(&tipc_nametbl_lock);

	if (p != publ) {
		FUNC1("Unable to remove publication from failed node\n"
		    "(type=%u, lower=%u, node=0x%x, ref=%u, key=%u)\n",
		    publ->type, publ->lower, publ->node, publ->ref, publ->key);
	}

	if (p) {
		FUNC2(p);
	}
}