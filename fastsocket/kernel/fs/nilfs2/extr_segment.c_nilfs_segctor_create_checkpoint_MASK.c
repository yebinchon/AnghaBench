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
struct the_nilfs {int /*<<< orphan*/  ns_cno; int /*<<< orphan*/  ns_cpfile; } ;
struct nilfs_sc_info {TYPE_1__* sc_sbi; } ;
struct nilfs_checkpoint {int dummy; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {struct the_nilfs* s_nilfs; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct nilfs_checkpoint**,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct nilfs_sc_info *sci)
{
	struct the_nilfs *nilfs = sci->sc_sbi->s_nilfs;
	struct buffer_head *bh_cp;
	struct nilfs_checkpoint *raw_cp;
	int err;

	/* XXX: this interface will be changed */
	err = FUNC2(nilfs->ns_cpfile, nilfs->ns_cno, 1,
					  &raw_cp, &bh_cp);
	if (FUNC1(!err)) {
		/* The following code is duplicated with cpfile.  But, it is
		   needed to collect the checkpoint even if it was not newly
		   created */
		FUNC4(bh_cp);
		FUNC5(nilfs->ns_cpfile);
		FUNC3(
			nilfs->ns_cpfile, nilfs->ns_cno, bh_cp);
	} else
		FUNC0(err == -EINVAL || err == -ENOENT);

	return err;
}