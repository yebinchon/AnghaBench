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
struct fb_info {int /*<<< orphan*/  aperture_size; int /*<<< orphan*/  aperture_base; scalar_t__ screen_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct fb_info *info)
{
	if (info->screen_base)
		FUNC1(info->screen_base);
	FUNC2(info->aperture_base, info->aperture_size);
	FUNC0(info);
}