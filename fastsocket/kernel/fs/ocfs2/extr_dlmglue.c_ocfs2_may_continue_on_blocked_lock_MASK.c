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
struct ocfs2_lock_res {int l_flags; int /*<<< orphan*/  l_blocking; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int OCFS2_LOCK_BLOCKED ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2(struct ocfs2_lock_res *lockres,
						     int wanted)
{
	FUNC0(!(lockres->l_flags & OCFS2_LOCK_BLOCKED));

	return wanted <= FUNC1(lockres->l_blocking);
}