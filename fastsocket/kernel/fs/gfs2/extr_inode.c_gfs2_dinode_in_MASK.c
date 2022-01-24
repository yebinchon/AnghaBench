#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  void* u8 ;
typedef  scalar_t__ u16 ;
struct timespec {void* tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_11__ {void* tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_10__ {void* tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_12__ {int i_mode; TYPE_3__ i_ctime; TYPE_2__ i_mtime; struct timespec i_atime; void* i_gid; void* i_uid; scalar_t__ i_rdev; } ;
struct gfs2_inode {scalar_t__ i_no_addr; TYPE_4__ i_inode; scalar_t__ i_eattr; void* i_entries; void* i_depth; void* i_height; void* i_diskflags; scalar_t__ i_generation; scalar_t__ i_goal; scalar_t__ i_no_formal_ino; } ;
struct TYPE_9__ {int /*<<< orphan*/  no_formal_ino; int /*<<< orphan*/  no_addr; } ;
struct gfs2_dinode {int /*<<< orphan*/  di_eattr; int /*<<< orphan*/  di_entries; int /*<<< orphan*/  di_depth; int /*<<< orphan*/  di_height; int /*<<< orphan*/  di_flags; int /*<<< orphan*/  di_generation; int /*<<< orphan*/  di_goal_meta; int /*<<< orphan*/  di_ctime_nsec; int /*<<< orphan*/  di_ctime; int /*<<< orphan*/  di_mtime_nsec; int /*<<< orphan*/  di_mtime; int /*<<< orphan*/  di_atime_nsec; int /*<<< orphan*/  di_atime; int /*<<< orphan*/  di_blocks; int /*<<< orphan*/  di_size; int /*<<< orphan*/  di_nlink; int /*<<< orphan*/  di_gid; int /*<<< orphan*/  di_uid; int /*<<< orphan*/  di_minor; int /*<<< orphan*/  di_major; int /*<<< orphan*/  di_mode; TYPE_1__ di_num; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ GFS2_DIR_MAX_DEPTH ; 
 scalar_t__ GFS2_MAX_META_HEIGHT ; 
 scalar_t__ FUNC0 (void*,void*) ; 
#define  S_IFBLK 129 
#define  S_IFCHR 128 
 int S_IFMT ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,void*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,scalar_t__) ; 
 scalar_t__ FUNC12 (struct timespec*,struct timespec*) ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static int FUNC14(struct gfs2_inode *ip, const void *buf)
{
	const struct gfs2_dinode *str = buf;
	struct timespec atime;
	u16 height, depth;

	if (FUNC13(ip->i_no_addr != FUNC4(str->di_num.no_addr)))
		goto corrupt;
	ip->i_no_formal_ino = FUNC4(str->di_num.no_formal_ino);
	ip->i_inode.i_mode = FUNC3(str->di_mode);
	ip->i_inode.i_rdev = 0;
	switch (ip->i_inode.i_mode & S_IFMT) {
	case S_IFBLK:
	case S_IFCHR:
		ip->i_inode.i_rdev = FUNC0(FUNC3(str->di_major),
					   FUNC3(str->di_minor));
		break;
	};

	ip->i_inode.i_uid = FUNC3(str->di_uid);
	ip->i_inode.i_gid = FUNC3(str->di_gid);
	FUNC10(&ip->i_inode, FUNC3(str->di_nlink));
	FUNC11(&ip->i_inode, FUNC4(str->di_size));
	FUNC8(&ip->i_inode, FUNC4(str->di_blocks));
	atime.tv_sec = FUNC4(str->di_atime);
	atime.tv_nsec = FUNC3(str->di_atime_nsec);
	if (FUNC12(&ip->i_inode.i_atime, &atime) < 0)
		ip->i_inode.i_atime = atime;
	ip->i_inode.i_mtime.tv_sec = FUNC4(str->di_mtime);
	ip->i_inode.i_mtime.tv_nsec = FUNC3(str->di_mtime_nsec);
	ip->i_inode.i_ctime.tv_sec = FUNC4(str->di_ctime);
	ip->i_inode.i_ctime.tv_nsec = FUNC3(str->di_ctime_nsec);

	ip->i_goal = FUNC4(str->di_goal_meta);
	ip->i_generation = FUNC4(str->di_generation);

	ip->i_diskflags = FUNC3(str->di_flags);
	FUNC9(&ip->i_inode);
	height = FUNC2(str->di_height);
	if (FUNC13(height > GFS2_MAX_META_HEIGHT))
		goto corrupt;
	ip->i_height = (u8)height;

	depth = FUNC2(str->di_depth);
	if (FUNC13(depth > GFS2_DIR_MAX_DEPTH))
		goto corrupt;
	ip->i_depth = (u8)depth;
	ip->i_entries = FUNC3(str->di_entries);

	ip->i_eattr = FUNC4(str->di_eattr);
	if (FUNC1(ip->i_inode.i_mode))
		FUNC7(&ip->i_inode);

	return 0;
corrupt:
	if (FUNC5(ip))
		FUNC6(ip);
	return -EIO;
}