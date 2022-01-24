#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ocfs2_super {struct ocfs2_journal* journal; } ;
struct ocfs2_journal {int /*<<< orphan*/  j_trans_barrier; } ;
struct TYPE_4__ {int h_ref; } ;
typedef  TYPE_1__ handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct ocfs2_super *osb,
		       handle_t *handle)
{
	int ret, nested;
	struct ocfs2_journal *journal = osb->journal;

	FUNC0(!handle);

	nested = handle->h_ref > 1;
	ret = FUNC1(handle);
	if (ret < 0)
		FUNC2(ret);

	if (!nested)
		FUNC3(&journal->j_trans_barrier);

	return ret;
}