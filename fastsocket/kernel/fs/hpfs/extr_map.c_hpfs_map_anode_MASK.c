#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct buffer_head {int dummy; } ;
struct TYPE_3__ {int n_used_nodes; int first_free; scalar_t__ internal; scalar_t__ n_free_nodes; } ;
struct anode {scalar_t__ magic; scalar_t__ self; TYPE_1__ btree; } ;
typedef  scalar_t__ anode_secno ;
struct TYPE_4__ {scalar_t__ sb_chk; } ;

/* Variables and functions */
 scalar_t__ ANODE_MAGIC ; 
 int /*<<< orphan*/  ANODE_RD_AHEAD ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 scalar_t__ FUNC1 (struct super_block*,scalar_t__,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,char*,scalar_t__) ; 
 struct anode* FUNC3 (struct super_block*,scalar_t__,struct buffer_head**,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (struct super_block*) ; 

struct anode *FUNC5(struct super_block *s, anode_secno ano, struct buffer_head **bhp)
{
	struct anode *anode;
	if (FUNC4(s)->sb_chk) if (FUNC1(s, ano, 1, "anode")) return NULL;
	if ((anode = FUNC3(s, ano, bhp, ANODE_RD_AHEAD)))
		if (FUNC4(s)->sb_chk) {
			if (anode->magic != ANODE_MAGIC || anode->self != ano) {
				FUNC2(s, "bad magic on anode %08x", ano);
				goto bail;
			}
			if ((unsigned)anode->btree.n_used_nodes + (unsigned)anode->btree.n_free_nodes !=
			    (anode->btree.internal ? 60 : 40)) {
				FUNC2(s, "bad number of nodes in anode %08x", ano);
				goto bail;
			}
			if (anode->btree.first_free !=
			    8 + anode->btree.n_used_nodes * (anode->btree.internal ? 8 : 12)) {
				FUNC2(s, "bad first_free pointer in anode %08x", ano);
				goto bail;
			}
		}
	return anode;
	bail:
	FUNC0(*bhp);
	return NULL;
}