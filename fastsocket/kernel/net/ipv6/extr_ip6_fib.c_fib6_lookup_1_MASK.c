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
typedef  int /*<<< orphan*/  u8 ;
struct rt6key {int /*<<< orphan*/  plen; int /*<<< orphan*/  addr; } ;
struct lookup_args {scalar_t__ offset; int /*<<< orphan*/  addr; } ;
struct fib6_node {int fn_flags; struct fib6_node* parent; struct fib6_node* subtree; scalar_t__ leaf; struct fib6_node* left; struct fib6_node* right; int /*<<< orphan*/  fn_bit; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct fib6_node*) ; 
 int RTN_ROOT ; 
 int RTN_RTINFO ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static struct fib6_node * FUNC4(struct fib6_node *root,
					struct lookup_args *args)
{
	struct fib6_node *fn;
	__be32 dir;

	if (FUNC3(args->offset == 0))
		return NULL;

	/*
	 *	Descend on a tree
	 */

	fn = root;

	for (;;) {
		struct fib6_node *next;

		dir = FUNC1(args->addr, fn->fn_bit);

		next = dir ? fn->right : fn->left;

		if (next) {
			fn = next;
			continue;
		}

		break;
	}

	while(fn) {
		if (FUNC0(fn) || fn->fn_flags & RTN_RTINFO) {
			struct rt6key *key;

			key = (struct rt6key *) ((u8 *) fn->leaf +
						 args->offset);

			if (FUNC2(&key->addr, args->addr, key->plen)) {
#ifdef CONFIG_IPV6_SUBTREES
				if (fn->subtree)
					fn = fib6_lookup_1(fn->subtree, args + 1);
#endif
				if (!fn || fn->fn_flags & RTN_RTINFO)
					return fn;
			}
		}

		if (fn->fn_flags & RTN_ROOT)
			break;

		fn = fn->parent;
	}

	return NULL;
}