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
struct sk_buff {int len; } ;
struct netlink_callback {int* args; } ;
struct leaf {int key; } ;
struct fib_table {scalar_t__ tb_data; } ;

/* Variables and functions */
 struct leaf* FUNC0 (struct trie*,int) ; 
 scalar_t__ FUNC1 (struct leaf*,struct fib_table*,struct sk_buff*,struct netlink_callback*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct leaf* FUNC5 (struct trie*) ; 
 struct leaf* FUNC6 (struct trie*,int) ; 
 struct leaf* FUNC7 (struct leaf*) ; 

__attribute__((used)) static int FUNC8(struct fib_table *tb, struct sk_buff *skb,
			struct netlink_callback *cb)
{
	struct leaf *l;
	struct trie *t = (struct trie *) tb->tb_data;
	t_key key = cb->args[2];
	int count = cb->args[3];

	FUNC3();
	/* Dump starting at last key.
	 * Note: 0.0.0.0/0 (ie default) is first key.
	 */
	if (count == 0)
		l = FUNC5(t);
	else {
		/* Normally, continue from last key, but if that is missing
		 * fallback to using slow rescan
		 */
		l = FUNC0(t, key);
		if (!l)
			l = FUNC6(t, count);
	}

	while (l) {
		cb->args[2] = l->key;
		if (FUNC1(l, tb, skb, cb) < 0) {
			cb->args[3] = count;
			FUNC4();
			return -1;
		}

		++count;
		l = FUNC7(l);
		FUNC2(&cb->args[4], 0,
		       sizeof(cb->args) - 4*sizeof(cb->args[0]));
	}
	cb->args[3] = count;
	FUNC4();

	return skb->len;
}