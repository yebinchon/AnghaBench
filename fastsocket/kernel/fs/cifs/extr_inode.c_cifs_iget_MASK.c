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
struct super_block {int s_flags; } ;
struct inode {int i_flags; int i_state; unsigned long i_ino; } ;
struct cifs_fattr {int cf_flags; int /*<<< orphan*/  cf_uniqueid; } ;
struct TYPE_2__ {int /*<<< orphan*/ * fscache; } ;

/* Variables and functions */
 int CIFS_FATTR_INO_COLLISION ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*) ; 
 int I_NEW ; 
 int MS_NOATIME ; 
 int /*<<< orphan*/  ROOT_I ; 
 int S_NOATIME ; 
 int S_NOCMTIME ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct cifs_fattr*) ; 
 int /*<<< orphan*/  cifs_find_inode ; 
 int /*<<< orphan*/  cifs_init_inode ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC6 (struct super_block*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cifs_fattr*) ; 
 scalar_t__ FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 

struct inode *
FUNC11(struct super_block *sb, struct cifs_fattr *fattr)
{
	unsigned long hash;
	struct inode *inode;

retry_iget5_locked:
	FUNC2(1, "looking for uniqueid=%llu", fattr->cf_uniqueid);

	/* hash down to 32-bits on 32-bit arch */
	hash = FUNC5(fattr->cf_uniqueid);

	inode = FUNC6(sb, hash, cifs_find_inode, cifs_init_inode, fattr);
	if (inode) {
		/* was there a potentially problematic inode collision? */
		if (fattr->cf_flags & CIFS_FATTR_INO_COLLISION) {
			fattr->cf_flags &= ~CIFS_FATTR_INO_COLLISION;

			if (FUNC7(inode)) {
				FUNC3(FUNC1(sb));
				FUNC8(inode);
				fattr->cf_uniqueid = FUNC9(sb, ROOT_I);
				goto retry_iget5_locked;
			}
		}

		FUNC4(inode, fattr);
		if (sb->s_flags & MS_NOATIME)
			inode->i_flags |= S_NOATIME | S_NOCMTIME;
		if (inode->i_state & I_NEW) {
			inode->i_ino = hash;
#ifdef CONFIG_CIFS_FSCACHE
			/* initialize per-inode cache cookie pointer */
			CIFS_I(inode)->fscache = NULL;
#endif
			FUNC10(inode);
		}
	}

	return inode;
}