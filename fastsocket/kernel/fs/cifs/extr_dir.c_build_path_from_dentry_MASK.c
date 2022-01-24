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
struct TYPE_2__ {int len; int /*<<< orphan*/  name; } ;
struct dentry {int /*<<< orphan*/  d_sb; struct dentry* d_parent; TYPE_1__ d_name; } ;
struct cifs_tcon {int Flags; int /*<<< orphan*/  treeName; } ;
struct cifs_sb_info {int prepathlen; int mnt_cifs_flags; int /*<<< orphan*/  prepath; } ;

/* Variables and functions */
 char FUNC0 (struct cifs_sb_info*) ; 
 int CIFS_MOUNT_POSIX_PATHS ; 
 struct cifs_sb_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 scalar_t__ MAX_TREE_SIZE ; 
 int SMB_SHARE_IS_IN_DFS ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 struct cifs_tcon* FUNC5 (struct cifs_sb_info*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 

char *
FUNC10(struct dentry *direntry)
{
	struct dentry *temp;
	int namelen;
	int pplen;
	int dfsplen;
	char *full_path;
	char dirsep;
	struct cifs_sb_info *cifs_sb = FUNC1(direntry->d_sb);
	struct cifs_tcon *tcon = FUNC5(cifs_sb);

	if (direntry == NULL)
		return NULL;  /* not much we can do if dentry is freed and
		we need to reopen the file after it was closed implicitly
		when the server crashed */

	dirsep = FUNC0(cifs_sb);
	pplen = cifs_sb->prepathlen;
	if (tcon->Flags & SMB_SHARE_IS_IN_DFS)
		dfsplen = FUNC9(tcon->treeName, MAX_TREE_SIZE + 1);
	else
		dfsplen = 0;
cifs_bp_rename_retry:
	namelen = pplen + dfsplen;
	for (temp = direntry; !FUNC2(temp);) {
		namelen += (1 + temp->d_name.len);
		temp = temp->d_parent;
		if (temp == NULL) {
			FUNC3(1, "corrupt dentry");
			return NULL;
		}
	}

	full_path = FUNC7(namelen+1, GFP_KERNEL);
	if (full_path == NULL)
		return full_path;
	full_path[namelen] = 0;	/* trailing null */
	for (temp = direntry; !FUNC2(temp);) {
		namelen -= 1 + temp->d_name.len;
		if (namelen < 0) {
			break;
		} else {
			full_path[namelen] = dirsep;
			FUNC8(full_path + namelen + 1, temp->d_name.name,
				temp->d_name.len);
			FUNC4(0, "name: %s", full_path + namelen);
		}
		temp = temp->d_parent;
		if (temp == NULL) {
			FUNC3(1, "corrupt dentry");
			FUNC6(full_path);
			return NULL;
		}
	}
	if (namelen != pplen + dfsplen) {
		FUNC3(1, "did not end path lookup where expected namelen is %d",
			namelen);
		/* presumably this is only possible if racing with a rename
		of one of the parent directories  (we can not lock the dentries
		above us to prevent this, but retrying should be harmless) */
		FUNC6(full_path);
		goto cifs_bp_rename_retry;
	}
	/* DIR_SEP already set for byte  0 / vs \ but not for
	   subsequent slashes in prepath which currently must
	   be entered the right way - not sure if there is an alternative
	   since the '\' is a valid posix character so we can not switch
	   those safely to '/' if any are found in the middle of the prepath */
	/* BB test paths to Windows with '/' in the midst of prepath */

	if (dfsplen) {
		FUNC8(full_path, tcon->treeName, dfsplen);
		if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_POSIX_PATHS) {
			int i;
			for (i = 0; i < dfsplen; i++) {
				if (full_path[i] == '\\')
					full_path[i] = '/';
			}
		}
	}
	FUNC8(full_path + dfsplen, FUNC1(direntry->d_sb)->prepath, pplen);
	return full_path;
}