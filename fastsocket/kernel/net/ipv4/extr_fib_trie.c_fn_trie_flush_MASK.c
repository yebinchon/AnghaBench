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
struct leaf {int /*<<< orphan*/  list; } ;
struct fib_table {scalar_t__ tb_data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 struct leaf* FUNC2 (struct trie*) ; 
 scalar_t__ FUNC3 (struct leaf*) ; 
 int /*<<< orphan*/  FUNC4 (struct trie*,struct leaf*) ; 
 struct leaf* FUNC5 (struct leaf*) ; 

__attribute__((used)) static int FUNC6(struct fib_table *tb)
{
	struct trie *t = (struct trie *) tb->tb_data;
	struct leaf *l, *ll = NULL;
	int found = 0;

	for (l = FUNC2(t); l; l = FUNC5(l)) {
		found += FUNC3(l);

		if (ll && FUNC0(&ll->list))
			FUNC4(t, ll);
		ll = l;
	}

	if (ll && FUNC0(&ll->list))
		FUNC4(t, ll);

	FUNC1("trie_flush found=%d\n", found);
	return found;
}