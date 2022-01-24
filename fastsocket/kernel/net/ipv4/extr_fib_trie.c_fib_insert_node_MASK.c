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
typedef  int t_key ;
struct trie {struct tnode* trie; } ;
struct tnode {int pos; int bits; int /*<<< orphan*/  key; } ;
struct node {int pos; int bits; int /*<<< orphan*/  key; } ;
struct list_head {int dummy; } ;
struct leaf_info {struct list_head falh; } ;
struct leaf {int /*<<< orphan*/  list; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct tnode*) ; 
 scalar_t__ FUNC2 (struct tnode*) ; 
 scalar_t__ T_TNODE ; 
 int /*<<< orphan*/  FUNC3 (struct tnode*) ; 
 int /*<<< orphan*/  FUNC4 (struct leaf*) ; 
 int /*<<< orphan*/  FUNC5 (struct leaf_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct leaf_info*) ; 
 struct leaf_info* FUNC7 (int) ; 
 struct leaf* FUNC8 () ; 
 struct tnode* FUNC9 (struct tnode*) ; 
 int /*<<< orphan*/  FUNC10 (struct tnode*,struct tnode*) ; 
 int /*<<< orphan*/  FUNC11 (char*,struct tnode*,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct trie*,struct tnode*,int,struct tnode*) ; 
 int /*<<< orphan*/  FUNC13 (struct tnode*,struct tnode*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC16 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 struct tnode* FUNC18 (struct tnode*,int) ; 
 struct tnode* FUNC19 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC20 (struct trie*,struct tnode*) ; 

__attribute__((used)) static struct list_head *FUNC21(struct trie *t, u32 key, int plen)
{
	int pos, newpos;
	struct tnode *tp = NULL, *tn = NULL;
	struct node *n;
	struct leaf *l;
	int missbit;
	struct list_head *fa_head = NULL;
	struct leaf_info *li;
	t_key cindex;

	pos = 0;
	n = t->trie;

	/* If we point to NULL, stop. Either the tree is empty and we should
	 * just put a new leaf in if, or we have reached an empty child slot,
	 * and we should just put our new leaf in that.
	 * If we point to a T_TNODE, check if it matches our key. Note that
	 * a T_TNODE might be skipping any number of bits - its 'pos' need
	 * not be the parent's 'pos'+'bits'!
	 *
	 * If it does match the current key, get pos/bits from it, extract
	 * the index from our key, push the T_TNODE and walk the tree.
	 *
	 * If it doesn't, we have to replace it with a new T_TNODE.
	 *
	 * If we point to a T_LEAF, it might or might not have the same key
	 * as we do. If it does, just change the value, update the T_LEAF's
	 * value, and return it.
	 * If it doesn't, we need to replace it with a T_TNODE.
	 */

	while (n != NULL &&  FUNC2(n) == T_TNODE) {
		tn = (struct tnode *) n;

		FUNC3(tn);

		if (FUNC17(tn->key, pos, tn->pos-pos, key)) {
			tp = tn;
			pos = tn->pos + tn->bits;
			n = FUNC18(tn,
					    FUNC15(key,
							      tn->pos,
							      tn->bits));

			FUNC0(n && FUNC9(n) != tn);
		} else
			break;
	}

	/*
	 * n  ----> NULL, LEAF or TNODE
	 *
	 * tp is n's (parent) ----> NULL or TNODE
	 */

	FUNC0(tp && FUNC1(tp));

	/* Case 1: n is a leaf. Compare prefixes */

	if (n != NULL && FUNC1(n) && FUNC14(key, n->key)) {
		l = (struct leaf *) n;
		li = FUNC7(plen);

		if (!li)
			return NULL;

		fa_head = &li->falh;
		FUNC6(&l->list, li);
		goto done;
	}
	l = FUNC8();

	if (!l)
		return NULL;

	l->key = key;
	li = FUNC7(plen);

	if (!li) {
		FUNC4(l);
		return NULL;
	}

	fa_head = &li->falh;
	FUNC6(&l->list, li);

	if (t->trie && n == NULL) {
		/* Case 2: n is NULL, and will just insert a new leaf */

		FUNC10((struct node *)l, tp);

		cindex = FUNC15(key, tp->pos, tp->bits);
		FUNC12(t, (struct tnode *)tp, cindex, (struct node *)l);
	} else {
		/* Case 3: n is a LEAF or a TNODE and the key doesn't match. */
		/*
		 *  Add a new tnode here
		 *  first tnode need some special handling
		 */

		if (tp)
			pos = tp->pos+tp->bits;
		else
			pos = 0;

		if (n) {
			newpos = FUNC16(key, pos, n->key);
			tn = FUNC19(n->key, newpos, 1);
		} else {
			newpos = 0;
			tn = FUNC19(key, newpos, 1); /* First tnode */
		}

		if (!tn) {
			FUNC5(li);
			FUNC4(l);
			return NULL;
		}

		FUNC10((struct node *)tn, tp);

		missbit = FUNC15(key, newpos, 1);
		FUNC12(t, tn, missbit, (struct node *)l);
		FUNC12(t, tn, 1-missbit, n);

		if (tp) {
			cindex = FUNC15(key, tp->pos, tp->bits);
			FUNC12(t, (struct tnode *)tp, cindex,
				  (struct node *)tn);
		} else {
			FUNC13(t->trie, (struct node *)tn);
			tp = tn;
		}
	}

	if (tp && tp->pos + tp->bits > 32)
		FUNC11("fib_trie"
			   " tp=%p pos=%d, bits=%d, key=%0x plen=%d\n",
			   tp, tp->pos, tp->bits, key, plen);

	/* Rebalance the trie */

	FUNC20(t, tp);
done:
	return fa_head;
}