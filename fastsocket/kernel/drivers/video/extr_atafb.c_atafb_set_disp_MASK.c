#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ smem_start; } ;
struct fb_info {TYPE_1__ fix; void* screen_base; int /*<<< orphan*/  var; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct fb_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct fb_info*) ; 

__attribute__((used)) static void FUNC2(struct fb_info *info)
{
	FUNC1(&info->var, info);
	FUNC0(&info->fix, info);

	info->screen_base = (void *)info->fix.smem_start;
}