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
struct TYPE_2__ {scalar_t__ smem_len; scalar_t__ smem_start; } ;
struct fb_info {int /*<<< orphan*/  mm_lock; TYPE_1__ fix; scalar_t__ screen_base; int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct fb_info *fbi)
{
	FUNC0(fbi->device, fbi->fix.smem_len,
			      fbi->screen_base, fbi->fix.smem_start);

	fbi->screen_base = 0;
	FUNC1(&fbi->mm_lock);
	fbi->fix.smem_start = 0;
	fbi->fix.smem_len = 0;
	FUNC2(&fbi->mm_lock);
	return 0;
}