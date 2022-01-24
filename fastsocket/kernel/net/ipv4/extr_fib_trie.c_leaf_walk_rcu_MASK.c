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
typedef  unsigned int t_key ;
struct tnode {int bits; int /*<<< orphan*/ * child; int /*<<< orphan*/  pos; } ;
struct node {int /*<<< orphan*/  key; } ;
struct leaf {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct node*) ; 
 struct tnode* FUNC1 (struct node*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct node* FUNC4 (struct tnode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct leaf *FUNC5(struct tnode *p, struct node *c)
{
	do {
		t_key idx;

		if (c)
			idx = FUNC3(c->key, p->pos, p->bits) + 1;
		else
			idx = 0;

		while (idx < 1u << p->bits) {
			c = FUNC4(p, idx++);
			if (!c)
				continue;

			if (FUNC0(c)) {
				FUNC2(p->child[idx]);
				return (struct leaf *) c;
			}

			/* Rescan start scanning in new node */
			p = (struct tnode *) c;
			idx = 0;
		}

		/* Node empty, walk back up to parent */
		c = (struct node *) p;
	} while ( (p = FUNC1(c)) != NULL);

	return NULL; /* Root of trie */
}