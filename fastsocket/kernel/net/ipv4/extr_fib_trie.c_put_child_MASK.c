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
struct tnode {int dummy; } ;
struct node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tnode*,int,struct node*,int) ; 

__attribute__((used)) static inline void FUNC1(struct trie *t, struct tnode *tn, int i,
			     struct node *n)
{
	FUNC0(tn, i, n, -1);
}