#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct quad_buffer_head {int dummy; } ;
struct inode {int i_size; int i_blocks; int /*<<< orphan*/  i_sb; } ;
struct hpfs_dirent {int length; int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; scalar_t__ down; } ;
struct dnode {scalar_t__ up; int first_free; scalar_t__ root_dnode; } ;
typedef  scalar_t__ secno ;
typedef  int loff_t ;
typedef  scalar_t__ dnode_secno ;
struct TYPE_2__ {scalar_t__ sb_chk; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC0 (struct hpfs_dirent*) ; 
 struct hpfs_dirent* FUNC1 (struct dnode*) ; 
 struct hpfs_dirent* FUNC2 (struct dnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (struct dnode*,struct hpfs_dirent*) ; 
 int FUNC5 (struct inode*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hpfs_dirent*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct quad_buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct dnode*,struct hpfs_dirent*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct dnode* FUNC10 (int /*<<< orphan*/ ,scalar_t__,struct quad_buffer_head*) ; 
 int /*<<< orphan*/  FUNC11 (struct quad_buffer_head*) ; 
 int /*<<< orphan*/  hpfs_pos_subst ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,scalar_t__,int*,int*,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct hpfs_dirent*) ; 
 struct hpfs_dirent* FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct hpfs_dirent*,struct hpfs_dirent*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,struct dnode*,scalar_t__) ; 

__attribute__((used)) static secno FUNC18(struct inode *i, dnode_secno from, dnode_secno to)
{
	dnode_secno dno, ddno;
	dnode_secno chk_up = to;
	struct dnode *dnode;
	struct quad_buffer_head qbh;
	struct hpfs_dirent *de, *nde;
	int a;
	loff_t t;
	int c1, c2 = 0;
	dno = from;
	while (1) {
		if (FUNC12(i->i_sb)->sb_chk)
			if (FUNC13(i->i_sb, dno, &c1, &c2, "move_to_top"))
				return 0;
		if (!(dnode = FUNC10(i->i_sb, dno, &qbh))) return 0;
		if (FUNC12(i->i_sb)->sb_chk) {
			if (dnode->up != chk_up) {
				FUNC8(i->i_sb, "move_to_top: up pointer from %08x should be %08x, is %08x",
					dno, chk_up, dnode->up);
				FUNC6(&qbh);
				return 0;
			}
			chk_up = dno;
		}
		if (!(de = FUNC1(dnode))) {
			FUNC8(i->i_sb, "move_to_top: dnode %08x has no last de", dno);
			FUNC6(&qbh);
			return 0;
		}
		if (!de->down) break;
		dno = FUNC0(de);
		FUNC6(&qbh);
	}
	while (!(de = FUNC2(dnode))) {
		dnode_secno up = dnode->up;
		FUNC6(&qbh);
		FUNC9(i->i_sb, dno);
		i->i_size -= 2048;
		i->i_blocks -= 4;
		FUNC3(i, hpfs_pos_subst, ((loff_t)dno << 4) | 1, 5);
		if (up == to) return to;
		if (!(dnode = FUNC10(i->i_sb, up, &qbh))) return 0;
		if (dnode->root_dnode) {
			FUNC8(i->i_sb, "move_to_top: got to root_dnode while moving from %08x to %08x", from, to);
			FUNC6(&qbh);
			return 0;
		}
		de = FUNC1(dnode);
		if (!de || !de->down) {
			FUNC8(i->i_sb, "move_to_top: dnode %08x doesn't point down to %08x", up, dno);
			FUNC6(&qbh);
			return 0;
		}
		dnode->first_free -= 4;
		de->length -= 4;
		de->down = 0;
		FUNC11(&qbh);
		dno = up;
	}
	t = FUNC4(dnode, de);
	FUNC3(i, hpfs_pos_subst, t, 4);
	FUNC3(i, hpfs_pos_subst, t + 1, 5);
	if (!(nde = FUNC15(de->length, GFP_NOFS))) {
		FUNC8(i->i_sb, "out of memory for dirent - directory will be corrupted");
		FUNC6(&qbh);
		return 0;
	}
	FUNC16(nde, de, de->length);
	ddno = de->down ? FUNC0(de) : 0;
	FUNC7(i->i_sb, dnode, de);
	FUNC17(i->i_sb, dnode, ddno);
	FUNC11(&qbh);
	FUNC6(&qbh);
	a = FUNC5(i, to, nde->name, nde->namelen, nde, from);
	FUNC14(nde);
	if (a) return 0;
	return dno;
}