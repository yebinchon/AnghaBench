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
struct hvfb_par {int update; int fb_ready; int /*<<< orphan*/  dwork; } ;
struct hv_device {int /*<<< orphan*/  channel; } ;
struct fb_info {struct hvfb_par* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_info*) ; 
 struct fb_info* FUNC2 (struct hv_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct hv_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct hv_device *hdev)
{
	struct fb_info *info = FUNC2(hdev);
	struct hvfb_par *par = info->par;

	par->update = false;
	par->fb_ready = false;

	FUNC5(info);
	FUNC0(&par->dwork);

	FUNC6(hdev->channel);
	FUNC3(hdev, NULL);

	FUNC4(info);
	FUNC1(info);

	return 0;
}