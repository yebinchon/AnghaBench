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
typedef  int u32 ;
struct tc_u_knode {int /*<<< orphan*/  handle; struct tc_u_knode* next; } ;
struct tc_u_hnode {struct tc_u_knode** ht; } ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC2(struct tc_u_hnode *ht, u32 handle)
{
	struct tc_u_knode *n;
	unsigned i = 0x7FF;

	for (n=ht->ht[FUNC0(handle)]; n; n = n->next)
		if (i < FUNC1(n->handle))
			i = FUNC1(n->handle);
	i++;

	return handle|(i>0xFFF ? 0xFFF : i);
}