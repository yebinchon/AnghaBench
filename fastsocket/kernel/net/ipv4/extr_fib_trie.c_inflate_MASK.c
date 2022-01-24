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
typedef  int t_key ;
struct trie {int dummy; } ;
struct tnode {int key; int pos; int bits; struct node** child; } ;
struct node {int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct tnode* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct node*) ; 
 scalar_t__ FUNC3 (struct tnode*) ; 
 int KEYLENGTH ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct trie*,struct tnode*,int,struct node*) ; 
 struct node* FUNC6 (struct trie*,struct tnode*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC8 (struct tnode*) ; 
 int /*<<< orphan*/  FUNC9 (struct tnode*) ; 
 int /*<<< orphan*/  FUNC10 (struct tnode*) ; 
 struct node* FUNC11 (struct tnode*,int) ; 
 struct tnode* FUNC12 (int,int,int) ; 

__attribute__((used)) static struct tnode *FUNC13(struct trie *t, struct tnode *tn)
{
	struct tnode *oldtnode = tn;
	int olen = FUNC8(tn);
	int i;

	FUNC4("In inflate\n");

	tn = FUNC12(oldtnode->key, oldtnode->pos, oldtnode->bits + 1);

	if (!tn)
		return FUNC1(-ENOMEM);

	/*
	 * Preallocate and store tnodes before the actual work so we
	 * don't get into an inconsistent state if memory allocation
	 * fails. In case of failure we return the oldnode and  inflate
	 * of tnode is ignored.
	 */

	for (i = 0; i < olen; i++) {
		struct tnode *inode;

		inode = (struct tnode *) FUNC11(oldtnode, i);
		if (inode &&
		    FUNC3(inode) &&
		    inode->pos == oldtnode->pos + oldtnode->bits &&
		    inode->bits > 1) {
			struct tnode *left, *right;
			t_key m = ~0U << (KEYLENGTH - 1) >> inode->pos;

			left = FUNC12(inode->key&(~m), inode->pos + 1,
					 inode->bits - 1);
			if (!left)
				goto nomem;

			right = FUNC12(inode->key|m, inode->pos + 1,
					  inode->bits - 1);

			if (!right) {
				FUNC9(left);
				goto nomem;
			}

			FUNC5(t, tn, 2*i, (struct node *) left);
			FUNC5(t, tn, 2*i+1, (struct node *) right);
		}
	}

	for (i = 0; i < olen; i++) {
		struct tnode *inode;
		struct node *node = FUNC11(oldtnode, i);
		struct tnode *left, *right;
		int size, j;

		/* An empty child */
		if (node == NULL)
			continue;

		/* A leaf or an internal node with skipped bits */

		if (FUNC2(node) || ((struct tnode *) node)->pos >
		   tn->pos + tn->bits - 1) {
			if (FUNC7(node->key,
					      oldtnode->pos + oldtnode->bits,
					      1) == 0)
				FUNC5(t, tn, 2*i, node);
			else
				FUNC5(t, tn, 2*i+1, node);
			continue;
		}

		/* An internal node with two children */
		inode = (struct tnode *) node;

		if (inode->bits == 1) {
			FUNC5(t, tn, 2*i, inode->child[0]);
			FUNC5(t, tn, 2*i+1, inode->child[1]);

			FUNC10(inode);
			continue;
		}

		/* An internal node with more than two children */

		/* We will replace this node 'inode' with two new
		 * ones, 'left' and 'right', each with half of the
		 * original children. The two new nodes will have
		 * a position one bit further down the key and this
		 * means that the "significant" part of their keys
		 * (see the discussion near the top of this file)
		 * will differ by one bit, which will be "0" in
		 * left's key and "1" in right's key. Since we are
		 * moving the key position by one step, the bit that
		 * we are moving away from - the bit at position
		 * (inode->pos) - is the one that will differ between
		 * left and right. So... we synthesize that bit in the
		 * two  new keys.
		 * The mask 'm' below will be a single "one" bit at
		 * the position (inode->pos)
		 */

		/* Use the old key, but set the new significant
		 *   bit to zero.
		 */

		left = (struct tnode *) FUNC11(tn, 2*i);
		FUNC5(t, tn, 2*i, NULL);

		FUNC0(!left);

		right = (struct tnode *) FUNC11(tn, 2*i+1);
		FUNC5(t, tn, 2*i+1, NULL);

		FUNC0(!right);

		size = FUNC8(left);
		for (j = 0; j < size; j++) {
			FUNC5(t, left, j, inode->child[j]);
			FUNC5(t, right, j, inode->child[j + size]);
		}
		FUNC5(t, tn, 2*i, FUNC6(t, left));
		FUNC5(t, tn, 2*i+1, FUNC6(t, right));

		FUNC10(inode);
	}
	FUNC10(oldtnode);
	return tn;
nomem:
	{
		int size = FUNC8(tn);
		int j;

		for (j = 0; j < size; j++)
			if (tn->child[j])
				FUNC9((struct tnode *)tn->child[j]);

		FUNC9(tn);

		return FUNC1(-ENOMEM);
	}
}