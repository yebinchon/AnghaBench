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
struct fb_info {int /*<<< orphan*/  state; } ;
struct fb_event {struct fb_info* info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FBINFO_STATE_RUNNING ; 
 int /*<<< orphan*/  FBINFO_STATE_SUSPENDED ; 
 int /*<<< orphan*/  FB_EVENT_RESUME ; 
 int /*<<< orphan*/  FB_EVENT_SUSPEND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct fb_event*) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_info*) ; 

void FUNC3(struct fb_info *info, int state)
{
	struct fb_event event;

	if (!FUNC1(info))
		return;
	event.info = info;
	if (state) {
		FUNC0(FB_EVENT_SUSPEND, &event);
		info->state = FBINFO_STATE_SUSPENDED;
	} else {
		info->state = FBINFO_STATE_RUNNING;
		FUNC0(FB_EVENT_RESUME, &event);
	}
	FUNC2(info);
}