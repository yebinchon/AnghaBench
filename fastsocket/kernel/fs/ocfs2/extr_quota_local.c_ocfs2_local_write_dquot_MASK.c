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
struct super_block {int dummy; } ;
struct ocfs2_dquot {int /*<<< orphan*/  dq_local_off; } ;
struct dquot {size_t dq_type; struct super_block* dq_sb; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * files; } ;

/* Variables and functions */
 struct ocfs2_dquot* FUNC0 (struct dquot*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ,struct ocfs2_dquot*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  olq_set_dquot ; 
 TYPE_1__* FUNC6 (struct super_block*) ; 

__attribute__((used)) static int FUNC7(struct dquot *dquot)
{
	struct super_block *sb = dquot->dq_sb;
	struct ocfs2_dquot *od = FUNC0(dquot);
	struct buffer_head *bh = NULL;
	int status;

	status = FUNC4(FUNC6(sb)->files[dquot->dq_type],
				    FUNC5(sb, od->dq_local_off),
				    &bh);
	if (status) {
		FUNC2(status);
		goto out;
	}
	status = FUNC3(FUNC6(sb)->files[dquot->dq_type], bh,
				 olq_set_dquot, od);
	if (status < 0) {
		FUNC2(status);
		goto out;
	}
out:
	FUNC1(bh);
	return status;
}