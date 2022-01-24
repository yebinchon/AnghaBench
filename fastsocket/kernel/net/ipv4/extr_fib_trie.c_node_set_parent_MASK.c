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
struct tnode {int dummy; } ;
struct node {unsigned long parent; } ;

/* Variables and functions */
 unsigned long FUNC0 (struct node*) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static inline void FUNC2(struct node *node, struct tnode *ptr)
{
	FUNC1();
	node->parent = (unsigned long)ptr | FUNC0(node);
}