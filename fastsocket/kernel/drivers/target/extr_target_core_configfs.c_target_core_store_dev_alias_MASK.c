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
struct TYPE_3__ {int /*<<< orphan*/  cg_item; } ;
struct se_hba {TYPE_1__ hba_group; } ;
struct TYPE_4__ {int /*<<< orphan*/  cg_item; } ;
struct se_device {char* dev_alias; TYPE_2__ dev_group; int /*<<< orphan*/  dev_flags; struct se_hba* se_hba; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  DF_USING_ALIAS ; 
 int EINVAL ; 
 int SE_DEV_ALIAS_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int FUNC3 (char*,int,char*,char const*) ; 

__attribute__((used)) static ssize_t FUNC4(
	void *p,
	const char *page,
	size_t count)
{
	struct se_device *dev = p;
	struct se_hba *hba = dev->se_hba;
	ssize_t read_bytes;

	if (count > (SE_DEV_ALIAS_LEN-1)) {
		FUNC2("alias count: %d exceeds"
			" SE_DEV_ALIAS_LEN-1: %u\n", (int)count,
			SE_DEV_ALIAS_LEN-1);
		return -EINVAL;
	}

	read_bytes = FUNC3(&dev->dev_alias[0], SE_DEV_ALIAS_LEN, "%s", page);
	if (!read_bytes)
		return -EINVAL;
	if (dev->dev_alias[read_bytes - 1] == '\n')
		dev->dev_alias[read_bytes - 1] = '\0';

	dev->dev_flags |= DF_USING_ALIAS;

	FUNC1("Target_Core_ConfigFS: %s/%s set alias: %s\n",
		FUNC0(&hba->hba_group.cg_item),
		FUNC0(&dev->dev_group.cg_item),
		dev->dev_alias);

	return read_bytes;
}