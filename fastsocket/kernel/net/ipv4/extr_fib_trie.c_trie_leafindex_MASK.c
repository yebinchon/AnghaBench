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
struct leaf {int dummy; } ;

/* Variables and functions */
 struct leaf* FUNC0 (struct trie*) ; 
 struct leaf* FUNC1 (struct leaf*) ; 

__attribute__((used)) static struct leaf *FUNC2(struct trie *t, int index)
{
	struct leaf *l = FUNC0(t);

	while (l && index-- > 0)
		l = FUNC1(l);

	return l;
}