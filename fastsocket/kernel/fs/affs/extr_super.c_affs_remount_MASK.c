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
typedef  int /*<<< orphan*/  uid_t ;
struct super_block {int s_flags; int s_dirt; } ;
struct affs_sb_info {unsigned long s_flags; int s_mode; int /*<<< orphan*/  s_gid; int /*<<< orphan*/  s_uid; int /*<<< orphan*/  s_volume; int /*<<< orphan*/  s_prefix; } ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 struct affs_sb_info* FUNC0 (struct super_block*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MS_NODIRATIME ; 
 int MS_RDONLY ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*) ; 
 int FUNC2 (struct super_block*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int*,int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*,char*) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int
FUNC11(struct super_block *sb, int *flags, char *data)
{
	struct affs_sb_info	*sbi = FUNC0(sb);
	int			 blocksize;
	uid_t			 uid;
	gid_t			 gid;
	int			 mode;
	int			 reserved;
	int			 root_block;
	unsigned long		 mount_flags;
	int			 res = 0;
	char			*new_opts = FUNC5(data, GFP_KERNEL);

	FUNC8("AFFS: remount(flags=0x%x,opts=\"%s\")\n",*flags,data);

	*flags |= MS_NODIRATIME;

	if (!FUNC7(data, &uid, &gid, &mode, &reserved, &root_block,
			   &blocksize, &sbi->s_prefix, sbi->s_volume,
			   &mount_flags)) {
		FUNC4(new_opts);
		return -EINVAL;
	}
	FUNC6();
	FUNC9(sb, new_opts);

	sbi->s_flags = mount_flags;
	sbi->s_mode  = mode;
	sbi->s_uid   = uid;
	sbi->s_gid   = gid;

	if ((*flags & MS_RDONLY) == (sb->s_flags & MS_RDONLY)) {
		FUNC10();
		return 0;
	}
	if (*flags & MS_RDONLY) {
		sb->s_dirt = 1;
		while (sb->s_dirt)
			FUNC3(sb);
		FUNC1(sb);
	} else
		res = FUNC2(sb, flags);

	FUNC10();
	return res;
}