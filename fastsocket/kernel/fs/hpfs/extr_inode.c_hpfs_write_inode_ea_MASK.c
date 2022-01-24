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
struct inode {scalar_t__ i_uid; scalar_t__ i_gid; int i_mode; int /*<<< orphan*/  i_rdev; int /*<<< orphan*/  i_sb; } ;
struct hpfs_inode_info {int i_ea_uid; int i_ea_gid; int i_ea_mode; } ;
struct fnode {int dummy; } ;
typedef  scalar_t__ __le32 ;
struct TYPE_2__ {int sb_eas; scalar_t__ sb_uid; scalar_t__ sb_gid; int sb_mode; } ;

/* Variables and functions */
 int S_IFDIR ; 
 int S_IFREG ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 struct hpfs_inode_info* FUNC5 (struct inode*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,struct fnode*,char*,char*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct inode *i, struct fnode *fnode)
{
	struct hpfs_inode_info *hpfs_inode = FUNC5(i);
	/*if (fnode->acl_size_l || fnode->acl_size_s) {
		   Some unknown structures like ACL may be in fnode,
		   we'd better not overwrite them
		hpfs_error(i->i_sb, "fnode %08x has some unknown HPFS386 stuctures", i->i_ino);
	} else*/ if (FUNC6(i->i_sb)->sb_eas >= 2) {
		__le32 ea;
		if ((i->i_uid != FUNC6(i->i_sb)->sb_uid) || hpfs_inode->i_ea_uid) {
			ea = FUNC4(i->i_uid);
			FUNC7(i, fnode, "UID", (char*)&ea, 2);
			hpfs_inode->i_ea_uid = 1;
		}
		if ((i->i_gid != FUNC6(i->i_sb)->sb_gid) || hpfs_inode->i_ea_gid) {
			ea = FUNC4(i->i_gid);
			FUNC7(i, fnode, "GID", (char *)&ea, 2);
			hpfs_inode->i_ea_gid = 1;
		}
		if (!FUNC3(i->i_mode))
			if ((i->i_mode != ((FUNC6(i->i_sb)->sb_mode & ~(FUNC2(i->i_mode) ? 0 : 0111))
			  | (FUNC2(i->i_mode) ? S_IFDIR : S_IFREG))
			  && i->i_mode != ((FUNC6(i->i_sb)->sb_mode & ~(FUNC2(i->i_mode) ? 0222 : 0333))
			  | (FUNC2(i->i_mode) ? S_IFDIR : S_IFREG))) || hpfs_inode->i_ea_mode) {
				ea = FUNC4(i->i_mode);
				/* sick, but legal */
				FUNC7(i, fnode, "MODE", (char *)&ea, 2);
				hpfs_inode->i_ea_mode = 1;
			}
		if (FUNC0(i->i_mode) || FUNC1(i->i_mode)) {
			ea = FUNC4(FUNC8(i->i_rdev));
			FUNC7(i, fnode, "DEV", (char *)&ea, 4);
		}
	}
}