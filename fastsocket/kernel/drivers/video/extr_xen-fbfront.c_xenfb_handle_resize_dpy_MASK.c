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
struct xenfb_info {int /*<<< orphan*/  resize_lock; scalar_t__ resize_dpy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct xenfb_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct xenfb_info*) ; 

__attribute__((used)) static void FUNC4(struct xenfb_info *info)
{
	unsigned long flags;

	FUNC0(&info->resize_lock, flags);
	if (info->resize_dpy) {
		if (!FUNC3(info)) {
			info->resize_dpy = 0;
			FUNC2(info);
		}
	}
	FUNC1(&info->resize_lock, flags);
}