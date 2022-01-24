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
struct cifs_tcon {int Flags; int /*<<< orphan*/  treeName; } ;
struct cifs_sb_info {int prepathlen; int mnt_cifs_flags; int /*<<< orphan*/  prepath; } ;

/* Variables and functions */
 int CIFS_MOUNT_POSIX_PATHS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ MAX_TREE_SIZE ; 
 int SMB_SHARE_IS_IN_DFS ; 
 char* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

char *FUNC3(struct cifs_sb_info *cifs_sb,
				struct cifs_tcon *tcon)
{
	int pplen = cifs_sb->prepathlen;
	int dfsplen;
	char *full_path = NULL;

	/* if no prefix path, simply set path to the root of share to "" */
	if (pplen == 0) {
		full_path = FUNC0(1, GFP_KERNEL);
		if (full_path)
			full_path[0] = 0;
		return full_path;
	}

	if (tcon->Flags & SMB_SHARE_IS_IN_DFS)
		dfsplen = FUNC2(tcon->treeName, MAX_TREE_SIZE + 1);
	else
		dfsplen = 0;

	full_path = FUNC0(dfsplen + pplen + 1, GFP_KERNEL);
	if (full_path == NULL)
		return full_path;

	if (dfsplen) {
		FUNC1(full_path, tcon->treeName, dfsplen);
		/* switch slash direction in prepath depending on whether
		 * windows or posix style path names
		 */
		if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_POSIX_PATHS) {
			int i;
			for (i = 0; i < dfsplen; i++) {
				if (full_path[i] == '\\')
					full_path[i] = '/';
			}
		}
	}
	FUNC1(full_path + dfsplen, cifs_sb->prepath, pplen);
	full_path[dfsplen + pplen] = 0; /* add trailing null */
	return full_path;
}