#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct stat_data {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  tv_sec; } ;
struct TYPE_6__ {int /*<<< orphan*/  tv_sec; } ;
struct TYPE_5__ {int /*<<< orphan*/  tv_sec; } ;
struct inode {int /*<<< orphan*/  i_generation; int /*<<< orphan*/  i_rdev; int /*<<< orphan*/  i_mode; TYPE_3__ i_ctime; TYPE_2__ i_atime; TYPE_1__ i_mtime; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; int /*<<< orphan*/  i_nlink; } ;
typedef  int /*<<< orphan*/  loff_t ;
typedef  int /*<<< orphan*/  __u16 ;
struct TYPE_8__ {int /*<<< orphan*/  i_attrs; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  SD_V2_SIZE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct stat_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct stat_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct stat_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct stat_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct stat_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct stat_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct stat_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct stat_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct stat_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct stat_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct stat_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct stat_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC18(void *sd, struct inode *inode, loff_t size)
{
	struct stat_data *sd_v2 = (struct stat_data *)sd;
	__u16 flags;

	FUNC11(sd_v2, inode->i_mode);
	FUNC13(sd_v2, inode->i_nlink);
	FUNC16(sd_v2, inode->i_uid);
	FUNC15(sd_v2, size);
	FUNC10(sd_v2, inode->i_gid);
	FUNC12(sd_v2, inode->i_mtime.tv_sec);
	FUNC5(sd_v2, inode->i_atime.tv_sec);
	FUNC8(sd_v2, inode->i_ctime.tv_sec);
	FUNC7(sd_v2, FUNC17(inode, SD_V2_SIZE));
	if (FUNC2(inode->i_mode) || FUNC1(inode->i_mode))
		FUNC14(sd_v2, FUNC4(inode->i_rdev));
	else
		FUNC9(sd_v2, inode->i_generation);
	flags = FUNC0(inode)->i_attrs;
	FUNC3(inode, &flags);
	FUNC6(sd_v2, flags);
}