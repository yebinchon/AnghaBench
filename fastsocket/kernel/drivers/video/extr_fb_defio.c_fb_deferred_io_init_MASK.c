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
struct fb_info {int /*<<< orphan*/  deferred_work; TYPE_1__* fbops; struct fb_deferred_io* fbdefio; } ;
struct fb_deferred_io {scalar_t__ delay; int /*<<< orphan*/  pagelist; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  fb_mmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ HZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fb_deferred_io_mmap ; 
 int /*<<< orphan*/  fb_deferred_io_work ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct fb_info *info)
{
	struct fb_deferred_io *fbdefio = info->fbdefio;

	FUNC0(!fbdefio);
	FUNC3(&fbdefio->lock);
	info->fbops->fb_mmap = fb_deferred_io_mmap;
	FUNC1(&info->deferred_work, fb_deferred_io_work);
	FUNC2(&fbdefio->pagelist);
	if (fbdefio->delay == 0) /* set a default of 1 s */
		fbdefio->delay = HZ;
}