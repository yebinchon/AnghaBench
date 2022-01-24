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
struct smb_sb_info {int dummy; } ;
struct nameidata {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {unsigned long d_time; struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (struct smb_sb_info*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct smb_sb_info* FUNC6 (struct dentry*) ; 
 scalar_t__ FUNC7 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int
FUNC9(struct dentry * dentry, struct nameidata *nd)
{
	struct smb_sb_info *server = FUNC6(dentry);
	struct inode * inode = dentry->d_inode;
	unsigned long age = jiffies - dentry->d_time;
	int valid;

	/*
	 * The default validation is based on dentry age:
	 * we believe in dentries for a few seconds.  (But each
	 * successful server lookup renews the timestamp.)
	 */
	valid = (age <= FUNC2(server));
#ifdef SMBFS_DEBUG_VERBOSE
	if (!valid)
		VERBOSE("%s/%s not valid, age=%lu\n", 
			DENTRY_PATH(dentry), age);
#endif

	if (inode) {
		FUNC5();
		if (FUNC4(inode)) {
			FUNC1("%s/%s has dud inode\n", FUNC0(dentry));
			valid = 0;
		} else if (!valid)
			valid = (FUNC7(dentry) == 0);
		FUNC8();
	} else {
		/*
		 * What should we do for negative dentries?
		 */
	}
	return valid;
}