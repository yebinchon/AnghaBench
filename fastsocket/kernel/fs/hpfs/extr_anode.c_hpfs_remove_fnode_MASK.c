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
struct TYPE_4__ {TYPE_1__* external; } ;
struct fnode {int /*<<< orphan*/  ea_size_l; int /*<<< orphan*/  ea_anode; int /*<<< orphan*/  ea_secno; TYPE_2__ u; int /*<<< orphan*/  btree; int /*<<< orphan*/  dirflag; } ;
struct extended_attribute {int /*<<< orphan*/  anode; scalar_t__ indirect; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  fnode_secno ;
struct TYPE_3__ {int /*<<< orphan*/  disk_secno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct extended_attribute*) ; 
 int /*<<< orphan*/  FUNC2 (struct extended_attribute*) ; 
 struct extended_attribute* FUNC3 (struct fnode*) ; 
 struct extended_attribute* FUNC4 (struct fnode*) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,int /*<<< orphan*/ ,int) ; 
 struct fnode* FUNC8 (struct super_block*,int /*<<< orphan*/ ,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct super_block*,int /*<<< orphan*/ ) ; 
 struct extended_attribute* FUNC11 (struct extended_attribute*) ; 

void FUNC12(struct super_block *s, fnode_secno fno)
{
	struct buffer_head *bh;
	struct fnode *fnode;
	struct extended_attribute *ea;
	struct extended_attribute *ea_end;
	if (!(fnode = FUNC8(s, fno, &bh))) return;
	if (!fnode->dirflag) FUNC9(s, &fnode->btree);
	else FUNC10(s, fnode->u.external[0].disk_secno);
	ea_end = FUNC4(fnode);
	for (ea = FUNC3(fnode); ea < ea_end; ea = FUNC11(ea))
		if (ea->indirect)
			FUNC6(s, FUNC2(ea), ea->anode, FUNC1(ea));
	FUNC5(s, fnode->ea_secno, fnode->ea_anode, fnode->ea_size_l);
	FUNC0(bh);
	FUNC7(s, fno, 1);
}