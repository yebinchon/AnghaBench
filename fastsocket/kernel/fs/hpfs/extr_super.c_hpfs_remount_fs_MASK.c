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
typedef  int umode_t ;
typedef  int /*<<< orphan*/  uid_t ;
struct super_block {int dummy; } ;
struct hpfs_sb_info {int sb_mode; int sb_lowercase; int sb_conv; int sb_eas; int sb_chk; int sb_chkdsk; int sb_err; int sb_timeshift; int /*<<< orphan*/  sb_gid; int /*<<< orphan*/  sb_uid; } ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MS_NOATIME ; 
 int MS_RDONLY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct hpfs_sb_info* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*) ; 
 int FUNC7 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int*,int*,int*,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*,char*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC12 (struct super_block*) ; 

__attribute__((used)) static int FUNC13(struct super_block *s, int *flags, char *data)
{
	uid_t uid;
	gid_t gid;
	umode_t umask;
	int lowercase, conv, eas, chk, errs, chkdsk, timeshift;
	int o;
	struct hpfs_sb_info *sbi = FUNC1(s);
	char *new_opts = FUNC3(data, GFP_KERNEL);
	
	*flags |= MS_NOATIME;
	
	FUNC4();
	FUNC5(s);
	uid = sbi->sb_uid; gid = sbi->sb_gid;
	umask = 0777 & ~sbi->sb_mode;
	lowercase = sbi->sb_lowercase; conv = sbi->sb_conv;
	eas = sbi->sb_eas; chk = sbi->sb_chk; chkdsk = sbi->sb_chkdsk;
	errs = sbi->sb_err; timeshift = sbi->sb_timeshift;

	if (!(o = FUNC7(data, &uid, &gid, &umask, &lowercase, &conv,
	    &eas, &chk, &errs, &chkdsk, &timeshift))) {
		FUNC8("HPFS: bad mount options.\n");
		goto out_err;
	}
	if (o == 2) {
		FUNC0();
		goto out_err;
	}
	if (timeshift != sbi->sb_timeshift) {
		FUNC8("HPFS: timeshift can't be changed using remount.\n");
		goto out_err;
	}

	FUNC12(s);

	sbi->sb_uid = uid; sbi->sb_gid = gid;
	sbi->sb_mode = 0777 & ~umask;
	sbi->sb_lowercase = lowercase; sbi->sb_conv = conv;
	sbi->sb_eas = eas; sbi->sb_chk = chk; sbi->sb_chkdsk = chkdsk;
	sbi->sb_err = errs; sbi->sb_timeshift = timeshift;

	if (!(*flags & MS_RDONLY)) FUNC6(s);

	FUNC9(s, new_opts);

	FUNC11(s);
	FUNC10();
	return 0;

out_err:
	FUNC11(s);
	FUNC10();
	FUNC2(new_opts);
	return -EINVAL;
}