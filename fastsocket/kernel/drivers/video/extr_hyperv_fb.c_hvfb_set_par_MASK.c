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
struct hv_device {int dummy; } ;
struct fb_info {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 struct hv_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hv_device*) ; 

__attribute__((used)) static int FUNC2(struct fb_info *info)
{
	struct hv_device *hdev = FUNC0(info->device);

	return FUNC1(hdev);
}