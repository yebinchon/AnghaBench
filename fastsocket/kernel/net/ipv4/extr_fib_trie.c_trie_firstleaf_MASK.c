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
struct trie {int /*<<< orphan*/  trie; } ;
struct tnode {int dummy; } ;
struct leaf {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tnode*) ; 
 struct leaf* FUNC1 (struct tnode*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct leaf *FUNC3(struct trie *t)
{
	struct tnode *n = (struct tnode *) FUNC2(t->trie);

	if (!n)
		return NULL;

	if (FUNC0(n))          /* trie is just a leaf */
		return (struct leaf *) n;

	return FUNC1(n, NULL);
}