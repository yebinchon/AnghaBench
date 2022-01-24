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
struct TYPE_3__ {int n_used_nodes; int first_free; scalar_t__ internal; scalar_t__ n_free_nodes; } ;
struct fnode {scalar_t__ magic; int ea_size_s; int acl_size_s; scalar_t__ ea_offs; TYPE_1__ btree; int /*<<< orphan*/  dirflag; } ;
struct extended_attribute {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  scalar_t__ ino_t ;
struct TYPE_4__ {scalar_t__ sb_chk; } ;

/* Variables and functions */
 scalar_t__ FNODE_MAGIC ; 
 int /*<<< orphan*/  FNODE_RD_AHEAD ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 struct extended_attribute* FUNC1 (struct fnode*) ; 
 struct extended_attribute* FUNC2 (struct fnode*) ; 
 scalar_t__ FUNC3 (struct super_block*,scalar_t__,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,char*,unsigned long,...) ; 
 struct fnode* FUNC5 (struct super_block*,scalar_t__,struct buffer_head**,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (struct super_block*) ; 
 struct extended_attribute* FUNC7 (struct extended_attribute*) ; 

struct fnode *FUNC8(struct super_block *s, ino_t ino, struct buffer_head **bhp)
{
	struct fnode *fnode;
	if (FUNC6(s)->sb_chk) if (FUNC3(s, ino, 1, "fnode")) {
		return NULL;
	}
	if ((fnode = FUNC5(s, ino, bhp, FNODE_RD_AHEAD))) {
		if (FUNC6(s)->sb_chk) {
			struct extended_attribute *ea;
			struct extended_attribute *ea_end;
			if (fnode->magic != FNODE_MAGIC) {
				FUNC4(s, "bad magic on fnode %08lx",
					(unsigned long)ino);
				goto bail;
			}
			if (!fnode->dirflag) {
				if ((unsigned)fnode->btree.n_used_nodes + (unsigned)fnode->btree.n_free_nodes !=
				    (fnode->btree.internal ? 12 : 8)) {
					FUNC4(s,
					   "bad number of nodes in fnode %08lx",
					    (unsigned long)ino);
					goto bail;
				}
				if (fnode->btree.first_free !=
				    8 + fnode->btree.n_used_nodes * (fnode->btree.internal ? 8 : 12)) {
					FUNC4(s,
					    "bad first_free pointer in fnode %08lx",
					    (unsigned long)ino);
					goto bail;
				}
			}
			if (fnode->ea_size_s && ((signed int)fnode->ea_offs < 0xc4 ||
			   (signed int)fnode->ea_offs + fnode->acl_size_s + fnode->ea_size_s > 0x200)) {
				FUNC4(s,
					"bad EA info in fnode %08lx: ea_offs == %04x ea_size_s == %04x",
					(unsigned long)ino,
					fnode->ea_offs, fnode->ea_size_s);
				goto bail;
			}
			ea = FUNC1(fnode);
			ea_end = FUNC2(fnode);
			while (ea != ea_end) {
				if (ea > ea_end) {
					FUNC4(s, "bad EA in fnode %08lx",
						(unsigned long)ino);
					goto bail;
				}
				ea = FUNC7(ea);
			}
		}
	}
	return fnode;
	bail:
	FUNC0(*bhp);
	return NULL;
}