#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  offset; } ;
struct TYPE_6__ {int /*<<< orphan*/  i810_cursor_memory; int /*<<< orphan*/  i810_fb_memory; } ;
struct TYPE_5__ {int /*<<< orphan*/  offset; } ;
struct i810fb_par {int cur_state; TYPE_3__ cursor_heap; TYPE_2__ i810_gtt; TYPE_1__ fb; } ;
struct fb_info {TYPE_4__* fbops; struct i810fb_par* par; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* fb_blank ) (int /*<<< orphan*/ ,struct fb_info*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_D0 ; 
 int PM_EVENT_FREEZE ; 
 int PM_EVENT_ON ; 
 int /*<<< orphan*/  VESA_NO_BLANKING ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fb_info*) ; 
 scalar_t__ FUNC4 (struct pci_dev*) ; 
 struct fb_info* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct fb_info*) ; 

__attribute__((used)) static int FUNC11(struct pci_dev *dev) 
{
	struct fb_info *info = FUNC5(dev);
	struct i810fb_par *par = info->par;
	int cur_state = par->cur_state;

	par->cur_state = PM_EVENT_ON;

	if (cur_state == PM_EVENT_FREEZE) {
		FUNC8(dev, PCI_D0);
		return 0;
	}

	FUNC0();
	FUNC8(dev, PCI_D0);
	FUNC6(dev);

	if (FUNC4(dev))
		goto fail;

	FUNC7(dev);
	FUNC1(par->i810_gtt.i810_fb_memory,
			par->fb.offset);
	FUNC1(par->i810_gtt.i810_cursor_memory,
			par->cursor_heap.offset);
	FUNC3(info);
	FUNC2 (info, 0);
	info->fbops->fb_blank(VESA_NO_BLANKING, info);
fail:
	FUNC9();
	return 0;
}