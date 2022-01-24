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
struct super_block {int dummy; } ;
struct buffer_head {int dummy; } ;
struct anode {int /*<<< orphan*/  btree; } ;
typedef  int /*<<< orphan*/  secno ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,int /*<<< orphan*/ ,unsigned int) ; 
 struct anode* FUNC2 (struct super_block*,int /*<<< orphan*/ ,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,int /*<<< orphan*/ *) ; 

void FUNC4(struct super_block *s, secno a, int ano, unsigned len)
{
	struct anode *anode;
	struct buffer_head *bh;
	if (ano) {
		if (!(anode = FUNC2(s, a, &bh))) return;
		FUNC3(s, &anode->btree);
		FUNC0(bh);
		FUNC1(s, a, 1);
	} else FUNC1(s, a, (len + 511) >> 9);
}