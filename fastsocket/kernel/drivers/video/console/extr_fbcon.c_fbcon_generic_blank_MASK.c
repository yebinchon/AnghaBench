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
struct vc_data {unsigned short vc_video_erase_char; int /*<<< orphan*/  vc_cols; int /*<<< orphan*/  vc_rows; scalar_t__ vc_hi_font_mask; } ;
struct fb_info {int dummy; } ;
struct fb_event {int* data; struct fb_info* info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FB_EVENT_CONBLANK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct fb_event*) ; 
 int /*<<< orphan*/  FUNC1 (struct vc_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct fb_info*) ; 

__attribute__((used)) static void FUNC4(struct vc_data *vc, struct fb_info *info,
				int blank)
{
	struct fb_event event;

	if (blank) {
		unsigned short charmask = vc->vc_hi_font_mask ?
			0x1ff : 0xff;
		unsigned short oldc;

		oldc = vc->vc_video_erase_char;
		vc->vc_video_erase_char &= charmask;
		FUNC1(vc, 0, 0, vc->vc_rows, vc->vc_cols);
		vc->vc_video_erase_char = oldc;
	}


	if (!FUNC2(info))
		return;
	event.info = info;
	event.data = &blank;
	FUNC0(FB_EVENT_CONBLANK, &event);
	FUNC3(info);
}