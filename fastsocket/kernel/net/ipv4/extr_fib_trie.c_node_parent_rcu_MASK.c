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
struct node {int dummy; } ;

/* Variables and functions */
 struct tnode* FUNC0 (struct node*) ; 
 struct tnode* FUNC1 (struct tnode*) ; 

__attribute__((used)) static inline struct tnode *FUNC2(struct node *node)
{
	struct tnode *ret = FUNC0(node);

	return FUNC1(ret);
}