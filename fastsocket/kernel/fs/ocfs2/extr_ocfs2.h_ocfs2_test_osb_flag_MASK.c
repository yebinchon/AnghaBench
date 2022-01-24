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
struct ocfs2_super {unsigned long osb_flags; int /*<<< orphan*/  osb_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline unsigned long  FUNC2(struct ocfs2_super *osb,
						 unsigned long flag)
{
	unsigned long ret;

	FUNC0(&osb->osb_lock);
	ret = osb->osb_flags & flag;
	FUNC1(&osb->osb_lock);
	return ret;
}