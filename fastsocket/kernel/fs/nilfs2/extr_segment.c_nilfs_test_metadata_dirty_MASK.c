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
struct the_nilfs {int /*<<< orphan*/  ns_sufile; int /*<<< orphan*/  ns_cpfile; } ;
struct nilfs_sb_info {int /*<<< orphan*/  s_ifile; struct the_nilfs* s_nilfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct the_nilfs*) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct nilfs_sb_info *sbi)
{
	struct the_nilfs *nilfs = sbi->s_nilfs;
	int ret = 0;

	if (FUNC2(sbi->s_ifile))
		ret++;
	if (FUNC2(nilfs->ns_cpfile))
		ret++;
	if (FUNC2(nilfs->ns_sufile))
		ret++;
	if (ret || FUNC1())
		if (FUNC2(FUNC0(nilfs)))
			ret++;
	return ret;
}