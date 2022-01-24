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
struct ocfs2_super {scalar_t__ local_alloc_state; unsigned int local_alloc_default_bits; int /*<<< orphan*/  osb_lock; int /*<<< orphan*/  la_enable_wq; } ;

/* Variables and functions */
 scalar_t__ OCFS2_LA_DISABLED ; 
 scalar_t__ OCFS2_LA_ENABLED ; 
 scalar_t__ OCFS2_LA_THROTTLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct ocfs2_super *osb,
				      unsigned int num_clusters)
{
	FUNC1(&osb->osb_lock);
	if (osb->local_alloc_state == OCFS2_LA_DISABLED ||
	    osb->local_alloc_state == OCFS2_LA_THROTTLED)
		if (num_clusters >= osb->local_alloc_default_bits) {
			FUNC0(&osb->la_enable_wq);
			osb->local_alloc_state = OCFS2_LA_ENABLED;
		}
	FUNC2(&osb->osb_lock);
}