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
struct savagefb_par {int /*<<< orphan*/  (* SavageWaitFifo ) (struct savagefb_par*,int) ;scalar_t__ bci_ptr; } ;
struct fb_info {struct savagefb_par* par; } ;
struct fb_copyarea {int sx; int dx; int sy; int dy; int width; int height; } ;

/* Variables and functions */
 int BCI_CMD_DEST_GBD ; 
 int BCI_CMD_RECT ; 
 int BCI_CMD_RECT_XP ; 
 int BCI_CMD_RECT_YP ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int BCI_CMD_SRC_GBD ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/ * savagefb_rop ; 
 int /*<<< orphan*/  FUNC4 (struct savagefb_par*,int) ; 

void FUNC5(struct fb_info *info, const struct fb_copyarea *region)
{
	struct savagefb_par *par = info->par;
	int sx = region->sx, dx = region->dx;
	int sy = region->sy, dy = region->dy;
	int cmd;

	if (!region->width || !region->height)
		return;
	par->bci_ptr = 0;
	cmd = BCI_CMD_RECT | BCI_CMD_DEST_GBD | BCI_CMD_SRC_GBD;
	FUNC0(cmd, savagefb_rop[0]);

	if (dx <= sx) {
		cmd |= BCI_CMD_RECT_XP;
	} else {
		sx += region->width - 1;
		dx += region->width - 1;
	}

	if (dy <= sy) {
		cmd |= BCI_CMD_RECT_YP;
	} else {
		sy += region->height - 1;
		dy += region->height - 1;
	}

	par->SavageWaitFifo(par,4);
	FUNC1(cmd);
	FUNC1(FUNC3(sx, sy));
	FUNC1(FUNC3(dx, dy));
	FUNC1(FUNC2(region->width, region->height));
}