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
struct ocfs2_super {int osb_flags; int /*<<< orphan*/  osb_lock; } ;

/* Variables and functions */
 int OCFS2_OSB_SOFT_RO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC2(struct ocfs2_super *osb)
{
	int ret;

	FUNC0(&osb->osb_lock);
	ret = osb->osb_flags & OCFS2_OSB_SOFT_RO;
	FUNC1(&osb->osb_lock);

	return ret;
}