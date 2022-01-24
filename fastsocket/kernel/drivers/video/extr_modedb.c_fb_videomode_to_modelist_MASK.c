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
struct list_head {int dummy; } ;
struct fb_videomode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 scalar_t__ FUNC1 (struct fb_videomode const*,struct list_head*) ; 

void FUNC2(const struct fb_videomode *modedb, int num,
			      struct list_head *head)
{
	int i;

	FUNC0(head);

	for (i = 0; i < num; i++) {
		if (FUNC1(&modedb[i], head))
			return;
	}
}