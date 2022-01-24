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
typedef  int /*<<< orphan*/  u32 ;
struct trie {int /*<<< orphan*/  trie; } ;
struct tnode {int pos; int bits; int /*<<< orphan*/  key; } ;
struct node {int /*<<< orphan*/  key; } ;
struct leaf {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct node*) ; 
 scalar_t__ FUNC1 (struct node*) ; 
 scalar_t__ T_TNODE ; 
 int /*<<< orphan*/  FUNC2 (struct tnode*) ; 
 struct node* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 struct node* FUNC7 (struct tnode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct leaf *
FUNC8(struct trie *t, u32 key)
{
	int pos;
	struct tnode *tn;
	struct node *n;

	pos = 0;
	n = FUNC3(t->trie);

	while (n != NULL &&  FUNC1(n) == T_TNODE) {
		tn = (struct tnode *) n;

		FUNC2(tn);

		if (FUNC6(tn->key, pos, tn->pos-pos, key)) {
			pos = tn->pos + tn->bits;
			n = FUNC7(tn,
						FUNC5(key,
								  tn->pos,
								  tn->bits));
		} else
			break;
	}
	/* Case we have found a leaf. Compare prefixes */

	if (n != NULL && FUNC0(n) && FUNC4(key, n->key))
		return (struct leaf *)n;

	return NULL;
}