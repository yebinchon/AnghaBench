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
struct trie {int dummy; } ;
struct tnode {int pos; int bits; scalar_t__* child; int /*<<< orphan*/  key; } ;
struct node {int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct tnode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct trie*,struct tnode*,int,struct node*) ; 
 struct node* FUNC3 (struct trie*,struct tnode*) ; 
 int FUNC4 (struct tnode*) ; 
 int /*<<< orphan*/  FUNC5 (struct tnode*) ; 
 int /*<<< orphan*/  FUNC6 (struct tnode*) ; 
 struct node* FUNC7 (struct tnode*,int) ; 
 struct tnode* FUNC8 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static struct tnode *FUNC9(struct trie *t, struct tnode *tn)
{
	struct tnode *oldtnode = tn;
	struct node *left, *right;
	int i;
	int olen = FUNC4(tn);

	FUNC1("In halve\n");

	tn = FUNC8(oldtnode->key, oldtnode->pos, oldtnode->bits - 1);

	if (!tn)
		return FUNC0(-ENOMEM);

	/*
	 * Preallocate and store tnodes before the actual work so we
	 * don't get into an inconsistent state if memory allocation
	 * fails. In case of failure we return the oldnode and halve
	 * of tnode is ignored.
	 */

	for (i = 0; i < olen; i += 2) {
		left = FUNC7(oldtnode, i);
		right = FUNC7(oldtnode, i+1);

		/* Two nonempty children */
		if (left && right) {
			struct tnode *newn;

			newn = FUNC8(left->key, tn->pos + tn->bits, 1);

			if (!newn)
				goto nomem;

			FUNC2(t, tn, i/2, (struct node *)newn);
		}

	}

	for (i = 0; i < olen; i += 2) {
		struct tnode *newBinNode;

		left = FUNC7(oldtnode, i);
		right = FUNC7(oldtnode, i+1);

		/* At least one of the children is empty */
		if (left == NULL) {
			if (right == NULL)    /* Both are empty */
				continue;
			FUNC2(t, tn, i/2, right);
			continue;
		}

		if (right == NULL) {
			FUNC2(t, tn, i/2, left);
			continue;
		}

		/* Two nonempty children */
		newBinNode = (struct tnode *) FUNC7(tn, i/2);
		FUNC2(t, tn, i/2, NULL);
		FUNC2(t, newBinNode, 0, left);
		FUNC2(t, newBinNode, 1, right);
		FUNC2(t, tn, i/2, FUNC3(t, newBinNode));
	}
	FUNC6(oldtnode);
	return tn;
nomem:
	{
		int size = FUNC4(tn);
		int j;

		for (j = 0; j < size; j++)
			if (tn->child[j])
				FUNC5((struct tnode *)tn->child[j]);

		FUNC5(tn);

		return FUNC0(-ENOMEM);
	}
}