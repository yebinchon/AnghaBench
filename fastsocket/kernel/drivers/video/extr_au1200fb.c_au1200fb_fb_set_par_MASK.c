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
struct fb_info {int dummy; } ;
struct au1200fb_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct au1200fb_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_info*) ; 

__attribute__((used)) static int FUNC2(struct fb_info *fbi)
{
	struct au1200fb_device *fbdev = (struct au1200fb_device *)fbi;

	FUNC1(fbi);
	FUNC0(fbdev);

	return 0;
}