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
struct super_block {int dummy; } ;
struct quad_buffer_head {int dummy; } ;
struct hpfs_dirent {scalar_t__ fnode; int /*<<< orphan*/  last; int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; scalar_t__ down; } ;
struct TYPE_5__ {TYPE_1__* external; } ;
struct fnode {char* name; int len; TYPE_2__ u; int /*<<< orphan*/  up; int /*<<< orphan*/  dirflag; } ;
struct dnode {scalar_t__ up; scalar_t__ root_dnode; } ;
struct buffer_head {int dummy; } ;
typedef  scalar_t__ fnode_secno ;
typedef  scalar_t__ dnode_secno ;
struct TYPE_6__ {scalar_t__ sb_chk; } ;
struct TYPE_4__ {scalar_t__ disk_secno; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 scalar_t__ FUNC1 (struct hpfs_dirent*) ; 
 struct hpfs_dirent* FUNC2 (struct hpfs_dirent*) ; 
 struct hpfs_dirent* FUNC3 (struct dnode*) ; 
 struct hpfs_dirent* FUNC4 (struct dnode*) ; 
 int /*<<< orphan*/  FUNC5 (struct quad_buffer_head*) ; 
 int FUNC6 (struct super_block*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,char*,scalar_t__,...) ; 
 struct dnode* FUNC8 (struct super_block*,scalar_t__,struct quad_buffer_head*) ; 
 struct fnode* FUNC9 (struct super_block*,int /*<<< orphan*/ ,struct buffer_head**) ; 
 TYPE_3__* FUNC10 (struct super_block*) ; 
 scalar_t__ FUNC11 (struct super_block*,scalar_t__,int*,int*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 char* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 

struct hpfs_dirent *FUNC17(struct super_block *s, fnode_secno fno,
				     struct fnode *f, struct quad_buffer_head *qbh)
{
	char *name1;
	char *name2;
	int name1len, name2len;
	struct dnode *d;
	dnode_secno dno, downd;
	struct fnode *upf;
	struct buffer_head *bh;
	struct hpfs_dirent *de, *de_end;
	int c;
	int c1, c2 = 0;
	int d1, d2 = 0;
	name1 = f->name;
	if (!(name2 = FUNC13(256, GFP_NOFS))) {
		FUNC16("HPFS: out of memory, can't map dirent\n");
		return NULL;
	}
	if (f->len <= 15)
		FUNC14(name2, name1, name1len = name2len = f->len);
	else {
		FUNC14(name2, name1, 15);
		FUNC15(name2 + 15, 0xff, 256 - 15);
		/*name2[15] = 0xff;*/
		name1len = 15; name2len = 256;
	}
	if (!(upf = FUNC9(s, f->up, &bh))) {
		FUNC12(name2);
		return NULL;
	}	
	if (!upf->dirflag) {
		FUNC0(bh);
		FUNC7(s, "fnode %08x has non-directory parent %08x", fno, f->up);
		FUNC12(name2);
		return NULL;
	}
	dno = upf->u.external[0].disk_secno;
	FUNC0(bh);
	go_down:
	downd = 0;
	go_up:
	if (!(d = FUNC8(s, dno, qbh))) {
		FUNC12(name2);
		return NULL;
	}
	de_end = FUNC3(d);
	de = FUNC4(d);
	if (downd) {
		while (de < de_end) {
			if (de->down) if (FUNC1(de) == downd) goto f;
			de = FUNC2(de);
		}
		FUNC7(s, "pointer to dnode %08x not found in dnode %08x", downd, dno);
		FUNC5(qbh);
		FUNC12(name2);
		return NULL;
	}
	next_de:
	if (de->fnode == fno) {
		FUNC12(name2);
		return de;
	}
	c = FUNC6(s, name1, name1len, de->name, de->namelen, de->last);
	if (c < 0 && de->down) {
		dno = FUNC1(de);
		FUNC5(qbh);
		if (FUNC10(s)->sb_chk)
			if (FUNC11(s, dno, &c1, &c2, "map_fnode_dirent #1")) {
			FUNC12(name2);
			return NULL;
		}
		goto go_down;
	}
	f:
	if (de->fnode == fno) {
		FUNC12(name2);
		return de;
	}
	c = FUNC6(s, name2, name2len, de->name, de->namelen, de->last);
	if (c < 0 && !de->last) goto not_found;
	if ((de = FUNC2(de)) < de_end) goto next_de;
	if (d->root_dnode) goto not_found;
	downd = dno;
	dno = d->up;
	FUNC5(qbh);
	if (FUNC10(s)->sb_chk)
		if (FUNC11(s, downd, &d1, &d2, "map_fnode_dirent #2")) {
			FUNC12(name2);
			return NULL;
		}
	goto go_up;
	not_found:
	FUNC5(qbh);
	FUNC7(s, "dirent for fnode %08x not found", fno);
	FUNC12(name2);
	return NULL;
}