#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_11__ {int tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_10__ {int tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_13__ {int i_mode; int i_uid; int i_gid; int i_nlink; TYPE_5__ i_ctime; TYPE_4__ i_mtime; TYPE_3__ i_atime; } ;
struct gfs2_inode {int i_diskflags; int i_entries; TYPE_6__ i_inode; int /*<<< orphan*/  i_eattr; int /*<<< orphan*/  i_depth; int /*<<< orphan*/  i_height; int /*<<< orphan*/  i_generation; int /*<<< orphan*/  i_goal; int /*<<< orphan*/  i_no_formal_ino; int /*<<< orphan*/  i_no_addr; } ;
struct TYPE_9__ {void* no_formal_ino; void* no_addr; } ;
struct TYPE_8__ {void* mh_format; void* mh_type; void* mh_magic; } ;
struct gfs2_dinode {void* di_ctime_nsec; void* di_mtime_nsec; void* di_atime_nsec; void* di_eattr; void* di_entries; void* di_depth; void* di_payload_format; void* di_height; void* di_flags; void* di_generation; void* di_goal_data; void* di_goal_meta; void* di_ctime; void* di_mtime; void* di_atime; void* di_blocks; void* di_size; void* di_nlink; void* di_gid; void* di_uid; void* di_mode; TYPE_2__ di_num; TYPE_1__ di_header; } ;

/* Variables and functions */
 int GFS2_DIF_EXHASH ; 
 int GFS2_FORMAT_DE ; 
 int GFS2_FORMAT_DI ; 
 int GFS2_MAGIC ; 
 int GFS2_METATYPE_DI ; 
 scalar_t__ FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*) ; 

void FUNC6(const struct gfs2_inode *ip, void *buf)
{
	struct gfs2_dinode *str = buf;

	str->di_header.mh_magic = FUNC2(GFS2_MAGIC);
	str->di_header.mh_type = FUNC2(GFS2_METATYPE_DI);
	str->di_header.mh_format = FUNC2(GFS2_FORMAT_DI);
	str->di_num.no_addr = FUNC3(ip->i_no_addr);
	str->di_num.no_formal_ino = FUNC3(ip->i_no_formal_ino);
	str->di_mode = FUNC2(ip->i_inode.i_mode);
	str->di_uid = FUNC2(ip->i_inode.i_uid);
	str->di_gid = FUNC2(ip->i_inode.i_gid);
	str->di_nlink = FUNC2(ip->i_inode.i_nlink);
	str->di_size = FUNC3(FUNC5(&ip->i_inode));
	str->di_blocks = FUNC3(FUNC4(&ip->i_inode));
	str->di_atime = FUNC3(ip->i_inode.i_atime.tv_sec);
	str->di_mtime = FUNC3(ip->i_inode.i_mtime.tv_sec);
	str->di_ctime = FUNC3(ip->i_inode.i_ctime.tv_sec);

	str->di_goal_meta = FUNC3(ip->i_goal);
	str->di_goal_data = FUNC3(ip->i_goal);
	str->di_generation = FUNC3(ip->i_generation);

	str->di_flags = FUNC2(ip->i_diskflags);
	str->di_height = FUNC1(ip->i_height);
	str->di_payload_format = FUNC2(FUNC0(ip->i_inode.i_mode) &&
					     !(ip->i_diskflags & GFS2_DIF_EXHASH) ?
					     GFS2_FORMAT_DE : 0);
	str->di_depth = FUNC1(ip->i_depth);
	str->di_entries = FUNC2(ip->i_entries);

	str->di_eattr = FUNC3(ip->i_eattr);
	str->di_atime_nsec = FUNC2(ip->i_inode.i_atime.tv_nsec);
	str->di_mtime_nsec = FUNC2(ip->i_inode.i_mtime.tv_nsec);
	str->di_ctime_nsec = FUNC2(ip->i_inode.i_ctime.tv_nsec);
}