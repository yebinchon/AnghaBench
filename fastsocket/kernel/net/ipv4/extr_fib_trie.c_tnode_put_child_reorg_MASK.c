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
struct tnode {int bits; struct node** child; int /*<<< orphan*/  full_children; int /*<<< orphan*/  empty_children; } ;
struct node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct node*,struct tnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct node*,struct node*) ; 
 int FUNC3 (struct tnode*,struct node*) ; 

__attribute__((used)) static void FUNC4(struct tnode *tn, int i, struct node *n,
				  int wasfull)
{
	struct node *chi = tn->child[i];
	int isfull;

	FUNC0(i >= 1<<tn->bits);

	/* update emptyChildren */
	if (n == NULL && chi != NULL)
		tn->empty_children++;
	else if (n != NULL && chi == NULL)
		tn->empty_children--;

	/* update fullChildren */
	if (wasfull == -1)
		wasfull = FUNC3(tn, chi);

	isfull = FUNC3(tn, n);
	if (wasfull && !isfull)
		tn->full_children--;
	else if (!wasfull && isfull)
		tn->full_children++;

	if (n)
		FUNC1(n, tn);

	FUNC2(tn->child[i], n);
}