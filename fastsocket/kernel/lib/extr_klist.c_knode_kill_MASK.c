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
struct klist_node {int /*<<< orphan*/  n_klist; } ;

/* Variables and functions */
 unsigned long KNODE_DEAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct klist_node*) ; 

__attribute__((used)) static void FUNC2(struct klist_node *knode)
{
	/* and no knode should die twice ever either, see we're very humane */
	FUNC0(FUNC1(knode));
	*(unsigned long *)&knode->n_klist |= KNODE_DEAD;
}