#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int event; } ;
struct TYPE_8__ {TYPE_5__ power_state; } ;
struct TYPE_9__ {TYPE_1__ power; } ;
struct pci_dev {TYPE_2__ dev; } ;
struct TYPE_11__ {int /*<<< orphan*/  i810_cursor_memory; int /*<<< orphan*/  i810_fb_memory; } ;
struct i810fb_par {int cur_state; TYPE_4__ i810_gtt; } ;
struct fb_info {TYPE_3__* fbops; struct i810fb_par* par; } ;
typedef  TYPE_5__ pm_message_t ;
struct TYPE_10__ {int /*<<< orphan*/  (* fb_sync ) (struct fb_info*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FB_BLANK_POWERDOWN ; 
#define  PM_EVENT_FREEZE 129 
#define  PM_EVENT_PRETHAW 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct fb_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,TYPE_5__) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 struct fb_info* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct fb_info*) ; 

__attribute__((used)) static int FUNC11(struct pci_dev *dev, pm_message_t mesg)
{
	struct fb_info *info = FUNC6(dev);
	struct i810fb_par *par = info->par;

	par->cur_state = mesg.event;

	switch (mesg.event) {
	case PM_EVENT_FREEZE:
	case PM_EVENT_PRETHAW:
		dev->dev.power.power_state = mesg;
		return 0;
	}

	FUNC0();
	FUNC2(info, 1);

	if (info->fbops->fb_sync)
		info->fbops->fb_sync(info);

	FUNC3(FB_BLANK_POWERDOWN, info);
	FUNC1(par->i810_gtt.i810_fb_memory);
	FUNC1(par->i810_gtt.i810_cursor_memory);

	FUNC7(dev);
	FUNC5(dev);
	FUNC8(dev, FUNC4(dev, mesg));
	FUNC9();

	return 0;
}