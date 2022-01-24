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
struct tnode {int /*<<< orphan*/  bits; int /*<<< orphan*/  pos; } ;
struct node {int dummy; } ;
struct leaf {int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct leaf*) ; 
 struct tnode* FUNC1 (struct node*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct leaf*) ; 
 int /*<<< orphan*/  FUNC3 (struct trie*,struct tnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct trie*,struct tnode*) ; 

__attribute__((used)) static void FUNC7(struct trie *t, struct leaf *l)
{
	struct tnode *tp = FUNC1((struct node *) l);

	FUNC2("entering trie_leaf_remove(%p)\n", l);

	if (tp) {
		t_key cindex = FUNC5(l->key, tp->pos, tp->bits);
		FUNC3(t, (struct tnode *)tp, cindex, NULL);
		FUNC6(t, tp);
	} else
		FUNC4(t->trie, NULL);

	FUNC0(l);
}