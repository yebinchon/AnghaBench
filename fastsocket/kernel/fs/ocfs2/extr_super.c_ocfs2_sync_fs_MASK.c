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
typedef  int /*<<< orphan*/  tid_t ;
struct super_block {int dummy; } ;
struct ocfs2_super {TYPE_1__* journal; } ;
struct TYPE_2__ {int /*<<< orphan*/  j_journal; } ;

/* Variables and functions */
 int EROFS ; 
 struct ocfs2_super* FUNC0 (struct super_block*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct ocfs2_super*) ; 
 scalar_t__ FUNC5 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC6 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct super_block *sb, int wait)
{
	int status;
	tid_t target;
	struct ocfs2_super *osb = FUNC0(sb);

	if (FUNC5(osb))
		return -EROFS;

	if (wait) {
		status = FUNC4(osb);
		if (status < 0)
			FUNC3(status);
	} else {
		FUNC6(osb, 0);
	}

	if (FUNC1(FUNC0(sb)->journal->j_journal,
				      &target)) {
		if (wait)
			FUNC2(FUNC0(sb)->journal->j_journal,
					     target);
	}
	return 0;
}