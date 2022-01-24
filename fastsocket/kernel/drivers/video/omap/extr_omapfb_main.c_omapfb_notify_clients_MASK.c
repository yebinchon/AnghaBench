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
struct omapfb_device {int /*<<< orphan*/ * fb_info; } ;

/* Variables and functions */
 int OMAPFB_PLANE_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  notifier_inited ; 
 int /*<<< orphan*/ * omapfb_client_list ; 

void FUNC1(struct omapfb_device *fbdev, unsigned long event)
{
	int i;

	if (!notifier_inited)
		/* no client registered yet */
		return;

	for (i = 0; i < OMAPFB_PLANE_NUM; i++)
		FUNC0(&omapfb_client_list[i], event,
				    fbdev->fb_info[i]);
}