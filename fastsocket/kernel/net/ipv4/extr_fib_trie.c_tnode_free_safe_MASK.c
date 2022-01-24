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
struct tnode {int bits; struct tnode* tnode_free; } ;
struct node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tnode*) ; 
 struct tnode* tnode_free_head ; 
 int tnode_free_size ; 

__attribute__((used)) static void FUNC2(struct tnode *tn)
{
	FUNC0(FUNC1(tn));
	tn->tnode_free = tnode_free_head;
	tnode_free_head = tn;
	tnode_free_size += sizeof(struct tnode) +
			   (sizeof(struct node *) << tn->bits);
}