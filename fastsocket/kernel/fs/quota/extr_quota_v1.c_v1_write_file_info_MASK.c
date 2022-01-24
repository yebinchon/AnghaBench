#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct v1_disk_dqblk {int /*<<< orphan*/  dqb_btime; int /*<<< orphan*/  dqb_itime; } ;
struct super_block {TYPE_2__* s_op; } ;
struct quota_info {TYPE_1__* info; } ;
struct TYPE_4__ {int (* quota_read ) (struct super_block*,int,char*,int,int /*<<< orphan*/ ) ;int (* quota_write ) (struct super_block*,int,char*,int,int /*<<< orphan*/ ) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  dqi_bgrace; int /*<<< orphan*/  dqi_igrace; int /*<<< orphan*/  dqi_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DQF_INFO_DIRTY ; 
 int EIO ; 
 struct quota_info* FUNC0 (struct super_block*) ; 
 int FUNC1 (struct super_block*,int,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct super_block*,int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct super_block *sb, int type)
{
	struct quota_info *dqopt = FUNC0(sb);
	struct v1_disk_dqblk dqblk;
	int ret;

	dqopt->info[type].dqi_flags &= ~DQF_INFO_DIRTY;
	ret = sb->s_op->quota_read(sb, type, (char *)&dqblk,
				sizeof(struct v1_disk_dqblk), FUNC3(0));
	if (ret != sizeof(struct v1_disk_dqblk)) {
		if (ret >= 0)
			ret = -EIO;
		goto out;
	}
	dqblk.dqb_itime = dqopt->info[type].dqi_igrace;
	dqblk.dqb_btime = dqopt->info[type].dqi_bgrace;
	ret = sb->s_op->quota_write(sb, type, (char *)&dqblk,
	      sizeof(struct v1_disk_dqblk), FUNC3(0));
	if (ret == sizeof(struct v1_disk_dqblk))
		ret = 0;
	else if (ret > 0)
		ret = -EIO;
out:
	return ret;
}