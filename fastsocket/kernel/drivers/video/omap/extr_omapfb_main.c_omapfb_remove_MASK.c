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
struct platform_device {int dummy; } ;
struct omapfb_device {int state; } ;
typedef  enum omapfb_state { ____Placeholder_omapfb_state } omapfb_state ;

/* Variables and functions */
 int OMAPFB_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (struct omapfb_device*,int) ; 
 struct omapfb_device* FUNC1 (struct platform_device*) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	struct omapfb_device *fbdev = FUNC1(pdev);
	enum omapfb_state saved_state = fbdev->state;

	/* FIXME: wait till completion of pending events */

	fbdev->state = OMAPFB_DISABLED;
	FUNC0(fbdev, saved_state);

	return 0;
}