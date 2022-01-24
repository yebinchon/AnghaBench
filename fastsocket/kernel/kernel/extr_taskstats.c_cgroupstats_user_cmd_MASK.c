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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct genl_info {struct nlattr** attrs; } ;
struct file {int /*<<< orphan*/  f_dentry; } ;
struct cgroupstats {int dummy; } ;

/* Variables and functions */
 size_t CGROUPSTATS_CMD_ATTR_FD ; 
 int /*<<< orphan*/  CGROUPSTATS_CMD_NEW ; 
 int /*<<< orphan*/  CGROUPSTATS_TYPE_CGROUP_STATS ; 
 int EINVAL ; 
 int FUNC0 (struct cgroupstats*,int /*<<< orphan*/ ) ; 
 struct file* FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct file*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cgroupstats*,int /*<<< orphan*/ ,int) ; 
 struct cgroupstats* FUNC4 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC5 (struct nlattr*) ; 
 struct nlattr* FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int FUNC9 (struct genl_info*,int /*<<< orphan*/ ,struct sk_buff**,size_t) ; 
 int FUNC10 (struct sk_buff*,struct genl_info*) ; 

__attribute__((used)) static int FUNC11(struct sk_buff *skb, struct genl_info *info)
{
	int rc = 0;
	struct sk_buff *rep_skb;
	struct cgroupstats *stats;
	struct nlattr *na;
	size_t size;
	u32 fd;
	struct file *file;
	int fput_needed;

	na = info->attrs[CGROUPSTATS_CMD_ATTR_FD];
	if (!na)
		return -EINVAL;

	fd = FUNC5(info->attrs[CGROUPSTATS_CMD_ATTR_FD]);
	file = FUNC1(fd, &fput_needed);
	if (!file)
		return 0;

	size = FUNC7(sizeof(struct cgroupstats));

	rc = FUNC9(info, CGROUPSTATS_CMD_NEW, &rep_skb,
				size);
	if (rc < 0)
		goto err;

	na = FUNC6(rep_skb, CGROUPSTATS_TYPE_CGROUP_STATS,
				sizeof(struct cgroupstats));
	stats = FUNC4(na);
	FUNC3(stats, 0, sizeof(*stats));

	rc = FUNC0(stats, file->f_dentry);
	if (rc < 0) {
		FUNC8(rep_skb);
		goto err;
	}

	rc = FUNC10(rep_skb, info);

err:
	FUNC2(file, fput_needed);
	return rc;
}