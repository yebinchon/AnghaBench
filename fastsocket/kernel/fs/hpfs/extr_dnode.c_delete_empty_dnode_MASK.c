#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct quad_buffer_head {int dummy; } ;
struct inode {int i_size; int i_blocks; void* i_ino; int /*<<< orphan*/  i_sb; } ;
struct hpfs_inode_info {void* i_dno; } ;
struct hpfs_dirent {int down; int length; int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; int /*<<< orphan*/  last; } ;
struct TYPE_5__ {TYPE_1__* external; } ;
struct fnode {TYPE_2__ u; } ;
struct dnode {int first_free; int root_dnode; void* up; } ;
struct buffer_head {int dummy; } ;
typedef  int loff_t ;
typedef  void* dnode_secno ;
struct TYPE_6__ {int sb_chk; } ;
struct TYPE_4__ {void* disk_secno; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 void* FUNC1 (struct hpfs_dirent*) ; 
 struct hpfs_dirent* FUNC2 (struct hpfs_dirent*) ; 
 struct hpfs_dirent* FUNC3 (struct dnode*) ; 
 struct hpfs_dirent* FUNC4 (struct dnode*) ; 
 struct hpfs_dirent* FUNC5 (struct dnode*) ; 
 struct hpfs_dirent* FUNC6 (struct dnode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hpfs_dirent*,void*) ; 
 int /*<<< orphan*/  FUNC9 (struct quad_buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct dnode*,struct hpfs_dirent*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,void*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,void*) ; 
 struct hpfs_inode_info* FUNC13 (struct inode*) ; 
 struct dnode* FUNC14 (int /*<<< orphan*/ ,void*,struct quad_buffer_head*) ; 
 struct fnode* FUNC15 (int /*<<< orphan*/ ,void*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC16 (struct quad_buffer_head*) ; 
 int /*<<< orphan*/  hpfs_pos_del ; 
 int /*<<< orphan*/  hpfs_pos_subst ; 
 TYPE_3__* FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,void*,int*,int*,char*) ; 
 int /*<<< orphan*/  FUNC19 (struct hpfs_dirent*) ; 
 struct hpfs_dirent* FUNC20 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC22 (struct hpfs_dirent*,struct hpfs_dirent*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct hpfs_dirent*,char*,int) ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 

__attribute__((used)) static void FUNC25(struct inode *i, dnode_secno dno)
{
	struct hpfs_inode_info *hpfs_inode = FUNC13(i);
	struct quad_buffer_head qbh;
	struct dnode *dnode;
	dnode_secno down, up, ndown;
	int p;
	struct hpfs_dirent *de;
	int c1, c2 = 0;
	try_it_again:
	if (FUNC18(i->i_sb, dno, &c1, &c2, "delete_empty_dnode")) return;
	if (!(dnode = FUNC14(i->i_sb, dno, &qbh))) return;
	if (dnode->first_free > 56) goto end;
	if (dnode->first_free == 52 || dnode->first_free == 56) {
		struct hpfs_dirent *de_end;
		int root = dnode->root_dnode;
		up = dnode->up;
		de = FUNC4(dnode);
		down = de->down ? FUNC1(de) : 0;
		if (FUNC17(i->i_sb)->sb_chk) if (root && !down) {
			FUNC11(i->i_sb, "delete_empty_dnode: root dnode %08x is empty", dno);
			goto end;
		}
		FUNC9(&qbh);
		FUNC12(i->i_sb, dno);
		i->i_size -= 2048;
		i->i_blocks -= 4;
		if (root) {
			struct fnode *fnode;
			struct buffer_head *bh;
			struct dnode *d1;
			struct quad_buffer_head qbh1;
			if (FUNC17(i->i_sb)->sb_chk)
			    if (up != i->i_ino) {
				FUNC11(i->i_sb,
					"bad pointer to fnode, dnode %08x, pointing to %08x, should be %08lx",
					dno, up, (unsigned long)i->i_ino);
				return;
			    }
			if ((d1 = FUNC14(i->i_sb, down, &qbh1))) {
				d1->up = up;
				d1->root_dnode = 1;
				FUNC16(&qbh1);
				FUNC9(&qbh1);
			}
			if ((fnode = FUNC15(i->i_sb, up, &bh))) {
				fnode->u.external[0].disk_secno = down;
				FUNC21(bh);
				FUNC0(bh);
			}
			hpfs_inode->i_dno = down;
			FUNC7(i, hpfs_pos_subst, ((loff_t)dno << 4) | 1, (loff_t) 12);
			return;
		}
		if (!(dnode = FUNC14(i->i_sb, up, &qbh))) return;
		p = 1;
		de_end = FUNC3(dnode);
		for (de = FUNC4(dnode); de < de_end; de = FUNC2(de), p++)
			if (de->down) if (FUNC1(de) == dno) goto fnd;
		FUNC11(i->i_sb, "delete_empty_dnode: pointer to dnode %08x not found in dnode %08x", dno, up);
		goto end;
		fnd:
		FUNC7(i, hpfs_pos_subst, ((loff_t)dno << 4) | 1, ((loff_t)up << 4) | p);
		if (!down) {
			de->down = 0;
			de->length -= 4;
			dnode->first_free -= 4;
			FUNC23(FUNC2(de), (char *)FUNC2(de) + 4,
				(char *)dnode + dnode->first_free - (char *)FUNC2(de));
		} else {
			struct dnode *d1;
			struct quad_buffer_head qbh1;
			*(dnode_secno *) ((void *) de + de->length - 4) = down;
			if ((d1 = FUNC14(i->i_sb, down, &qbh1))) {
				d1->up = up;
				FUNC16(&qbh1);
				FUNC9(&qbh1);
			}
		}
	} else {
		FUNC11(i->i_sb, "delete_empty_dnode: dnode %08x, first_free == %03x", dno, dnode->first_free);
		goto end;
	}

	if (!de->last) {
		struct hpfs_dirent *de_next = FUNC2(de);
		struct hpfs_dirent *de_cp;
		struct dnode *d1;
		struct quad_buffer_head qbh1;
		if (!de_next->down) goto endm;
		ndown = FUNC1(de_next);
		if (!(de_cp = FUNC20(de->length, GFP_NOFS))) {
			FUNC24("HPFS: out of memory for dtree balancing\n");
			goto endm;
		}
		FUNC22(de_cp, de, de->length);
		FUNC10(i->i_sb, dnode, de);
		FUNC16(&qbh);
		FUNC9(&qbh);
		FUNC7(i, hpfs_pos_subst, ((loff_t)up << 4) | p, 4);
		FUNC7(i, hpfs_pos_del, ((loff_t)up << 4) | p, 1);
		if (de_cp->down) if ((d1 = FUNC14(i->i_sb, FUNC1(de_cp), &qbh1))) {
			d1->up = ndown;
			FUNC16(&qbh1);
			FUNC9(&qbh1);
		}
		FUNC8(i, ndown, de_cp->name, de_cp->namelen, de_cp, de_cp->down ? FUNC1(de_cp) : 0);
		/*printk("UP-TO-DNODE: %08x (ndown = %08x, down = %08x, dno = %08x)\n", up, ndown, down, dno);*/
		dno = up;
		FUNC19(de_cp);
		goto try_it_again;
	} else {
		struct hpfs_dirent *de_prev = FUNC6(dnode);
		struct hpfs_dirent *de_cp;
		struct dnode *d1;
		struct quad_buffer_head qbh1;
		dnode_secno dlp;
		if (!de_prev) {
			FUNC11(i->i_sb, "delete_empty_dnode: empty dnode %08x", up);
			FUNC16(&qbh);
			FUNC9(&qbh);
			dno = up;
			goto try_it_again;
		}
		if (!de_prev->down) goto endm;
		ndown = FUNC1(de_prev);
		if ((d1 = FUNC14(i->i_sb, ndown, &qbh1))) {
			struct hpfs_dirent *del = FUNC5(d1);
			dlp = del->down ? FUNC1(del) : 0;
			if (!dlp && down) {
				if (d1->first_free > 2044) {
					if (FUNC17(i->i_sb)->sb_chk >= 2) {
						FUNC24("HPFS: warning: unbalanced dnode tree, see hpfs.txt 4 more info\n");
						FUNC24("HPFS: warning: terminating balancing operation\n");
					}
					FUNC9(&qbh1);
					goto endm;
				}
				if (FUNC17(i->i_sb)->sb_chk >= 2) {
					FUNC24("HPFS: warning: unbalanced dnode tree, see hpfs.txt 4 more info\n");
					FUNC24("HPFS: warning: goin'on\n");
				}
				del->length += 4;
				del->down = 1;
				d1->first_free += 4;
			}
			if (dlp && !down) {
				del->length -= 4;
				del->down = 0;
				d1->first_free -= 4;
			} else if (down)
				*(dnode_secno *) ((void *) del + del->length - 4) = down;
		} else goto endm;
		if (!(de_cp = FUNC20(de_prev->length, GFP_NOFS))) {
			FUNC24("HPFS: out of memory for dtree balancing\n");
			FUNC9(&qbh1);
			goto endm;
		}
		FUNC16(&qbh1);
		FUNC9(&qbh1);
		FUNC22(de_cp, de_prev, de_prev->length);
		FUNC10(i->i_sb, dnode, de_prev);
		if (!de_prev->down) {
			de_prev->length += 4;
			de_prev->down = 1;
			dnode->first_free += 4;
		}
		*(dnode_secno *) ((void *) de_prev + de_prev->length - 4) = ndown;
		FUNC16(&qbh);
		FUNC9(&qbh);
		FUNC7(i, hpfs_pos_subst, ((loff_t)up << 4) | (p - 1), 4);
		FUNC7(i, hpfs_pos_subst, ((loff_t)up << 4) | p, ((loff_t)up << 4) | (p - 1));
		if (down) if ((d1 = FUNC14(i->i_sb, FUNC1(de), &qbh1))) {
			d1->up = ndown;
			FUNC16(&qbh1);
			FUNC9(&qbh1);
		}
		FUNC8(i, ndown, de_cp->name, de_cp->namelen, de_cp, dlp);
		dno = up;
		FUNC19(de_cp);
		goto try_it_again;
	}
	endm:
	FUNC16(&qbh);
	end:
	FUNC9(&qbh);
}