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
struct udf_sb_info {scalar_t__ s_lvid_bh; int /*<<< orphan*/  s_dmode; int /*<<< orphan*/  s_fmode; int /*<<< orphan*/  s_umask; int /*<<< orphan*/  s_gid; int /*<<< orphan*/  s_uid; int /*<<< orphan*/  s_flags; } ;
struct udf_options {int /*<<< orphan*/  dmode; int /*<<< orphan*/  fmode; int /*<<< orphan*/  umask; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  flags; } ;
struct super_block {int s_flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  minUDFWriteRev; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOSYS ; 
 int MS_RDONLY ; 
 int UDF_MAX_WRITE_VERSION ; 
 struct udf_sb_info* FUNC0 (struct super_block*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct udf_options*,int) ; 
 TYPE_1__* FUNC6 (struct udf_sb_info*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*) ; 

__attribute__((used)) static int FUNC10(struct super_block *sb, int *flags, char *options)
{
	struct udf_options uopt;
	struct udf_sb_info *sbi = FUNC0(sb);
	int error = 0;

	uopt.flags = sbi->s_flags;
	uopt.uid   = sbi->s_uid;
	uopt.gid   = sbi->s_gid;
	uopt.umask = sbi->s_umask;
	uopt.fmode = sbi->s_fmode;
	uopt.dmode = sbi->s_dmode;

	if (!FUNC5(options, &uopt, true))
		return -EINVAL;

	FUNC2();
	sbi->s_flags = uopt.flags;
	sbi->s_uid   = uopt.uid;
	sbi->s_gid   = uopt.gid;
	sbi->s_umask = uopt.umask;
	sbi->s_fmode = uopt.fmode;
	sbi->s_dmode = uopt.dmode;

	if (sbi->s_lvid_bh) {
		int write_rev = FUNC1(FUNC6(sbi)->minUDFWriteRev);
		if (write_rev > UDF_MAX_WRITE_VERSION)
			*flags |= MS_RDONLY;
	}

	if ((*flags & MS_RDONLY) == (sb->s_flags & MS_RDONLY))
		goto out_unlock;

	if (*flags & MS_RDONLY) {
		FUNC3(sb);

		error = FUNC8(sb, 1);
		if (error < 0 && error != -ENOSYS)
			error = -EBUSY;
	} else {
		FUNC4(sb);

		/* mark the fs r/w for quota activity */
		sb->s_flags &= ~MS_RDONLY;
		FUNC9(sb);
	}

out_unlock:
	FUNC7();
	return error;
}