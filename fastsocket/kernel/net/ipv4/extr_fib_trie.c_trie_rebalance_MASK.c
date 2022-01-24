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
typedef  int /*<<< orphan*/  t_key ;
struct trie {int /*<<< orphan*/  trie; } ;
struct tnode {int /*<<< orphan*/  bits; int /*<<< orphan*/  pos; int /*<<< orphan*/  key; } ;
struct node {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tnode*) ; 
 struct tnode* FUNC1 (struct node*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct node*) ; 
 scalar_t__ FUNC3 (struct trie*,struct tnode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (struct tnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct tnode*,int /*<<< orphan*/ ,struct node*,int) ; 

__attribute__((used)) static void FUNC9(struct trie *t, struct tnode *tn)
{
	int wasfull;
	t_key cindex, key;
	struct tnode *tp;

	key = tn->key;

	while (tn != NULL && (tp = FUNC1((struct node *)tn)) != NULL) {
		cindex = FUNC4(key, tp->pos, tp->bits);
		wasfull = FUNC6(tp, FUNC7(tp, cindex));
		tn = (struct tnode *) FUNC3(t, (struct tnode *)tn);

		FUNC8((struct tnode *)tp, cindex,
				      (struct node *)tn, wasfull);

		tp = FUNC1((struct node *) tn);
		if (!tp)
			FUNC2(t->trie, (struct node *)tn);

		FUNC5();
		if (!tp)
			break;
		tn = tp;
	}

	/* Handle last (top) tnode */
	if (FUNC0(tn))
		tn = (struct tnode *)FUNC3(t, (struct tnode *)tn);

	FUNC2(t->trie, (struct node *)tn);
	FUNC5();

	return;
}