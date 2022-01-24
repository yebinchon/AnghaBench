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
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mode; } ;
struct hpfs_dirent {scalar_t__ down; int /*<<< orphan*/  last; int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; } ;
struct dnode {int dummy; } ;
typedef  int /*<<< orphan*/  dnode_secno ;
struct TYPE_2__ {scalar_t__ sb_chk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hpfs_dirent*) ; 
 struct hpfs_dirent* FUNC2 (struct hpfs_dirent*) ; 
 struct hpfs_dirent* FUNC3 (struct dnode*) ; 
 struct hpfs_dirent* FUNC4 (struct dnode*) ; 
 int /*<<< orphan*/  FUNC5 (struct quad_buffer_head*) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 struct dnode* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct quad_buffer_head*) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*,char*) ; 

struct hpfs_dirent *FUNC11(struct inode *inode, dnode_secno dno, char *name, unsigned len,
			       dnode_secno *dd, struct quad_buffer_head *qbh)
{
	struct dnode *dnode;
	struct hpfs_dirent *de;
	struct hpfs_dirent *de_end;
	int c1, c2 = 0;

	if (!FUNC0(inode->i_mode)) FUNC7(inode->i_sb, "map_dirent: not a directory\n");
	again:
	if (FUNC9(inode->i_sb)->sb_chk)
		if (FUNC10(inode->i_sb, dno, &c1, &c2, "map_dirent")) return NULL;
	if (!(dnode = FUNC8(inode->i_sb, dno, qbh))) return NULL;
	
	de_end = FUNC3(dnode);
	for (de = FUNC4(dnode); de < de_end; de = FUNC2(de)) {
		int t = FUNC6(inode->i_sb, name, len, de->name, de->namelen, de->last);
		if (!t) {
			if (dd) *dd = dno;
			return de;
		}
		if (t < 0) {
			if (de->down) {
				dno = FUNC1(de);
				FUNC5(qbh);
				goto again;
			}
		break;
		}
	}
	FUNC5(qbh);
	return NULL;
}