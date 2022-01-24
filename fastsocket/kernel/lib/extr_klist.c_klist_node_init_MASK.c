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
struct klist_node {int /*<<< orphan*/  n_ref; int /*<<< orphan*/  n_node; } ;
struct klist {int /*<<< orphan*/  (* get ) (struct klist_node*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct klist_node*,struct klist*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct klist_node*) ; 

__attribute__((used)) static void FUNC4(struct klist *k, struct klist_node *n)
{
	FUNC0(&n->n_node);
	FUNC2(&n->n_ref);
	FUNC1(n, k);
	if (k->get)
		k->get(n);
}