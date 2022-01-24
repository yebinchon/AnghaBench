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
struct platform_device {int /*<<< orphan*/  id; } ;
struct fb_info {int /*<<< orphan*/  cmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  channel_owned ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_info*) ; 
 struct fb_info* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fb_info*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct fb_info *info = FUNC2(pdev);

	if (info) {
		FUNC6(info);
		FUNC0(&info->cmap);
		FUNC1(info);
		FUNC3(pdev, NULL);
	}

	FUNC4(channel_owned, pdev->id);
	FUNC5(pdev->id);

	return 0;
}