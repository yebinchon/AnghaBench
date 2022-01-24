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
typedef  int u32 ;
struct savagefb_par {int /*<<< orphan*/  (* SavageWaitFifo ) (struct savagefb_par*,int) ;scalar_t__ bci_ptr; } ;
struct TYPE_2__ {scalar_t__ visual; } ;
struct fb_info {scalar_t__ pseudo_palette; TYPE_1__ fix; struct savagefb_par* par; } ;
struct fb_fillrect {int color; size_t rop; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  dy; int /*<<< orphan*/  dx; } ;

/* Variables and functions */
 int BCI_CMD_DEST_GBD ; 
 int BCI_CMD_RECT ; 
 int BCI_CMD_RECT_XP ; 
 int BCI_CMD_RECT_YP ; 
 int BCI_CMD_SEND_COLOR ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int BCI_CMD_SRC_SOLID ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FB_VISUAL_PSEUDOCOLOR ; 
 int /*<<< orphan*/ * savagefb_rop ; 
 int /*<<< orphan*/  FUNC4 (struct savagefb_par*,int) ; 

void FUNC5(struct fb_info *info, const struct fb_fillrect *rect)
{
	struct savagefb_par *par = info->par;
	int cmd, color;

	if (!rect->width || !rect->height)
		return;

	if (info->fix.visual == FB_VISUAL_PSEUDOCOLOR)
		color = rect->color;
	else
		color = ((u32 *)info->pseudo_palette)[rect->color];

	cmd = BCI_CMD_RECT | BCI_CMD_RECT_XP | BCI_CMD_RECT_YP |
	      BCI_CMD_DEST_GBD | BCI_CMD_SRC_SOLID |
	      BCI_CMD_SEND_COLOR;

	par->bci_ptr = 0;
	FUNC0(cmd, savagefb_rop[rect->rop]);

	par->SavageWaitFifo(par,4);
	FUNC1(cmd);
	FUNC1(color);
	FUNC1( FUNC3(rect->dx, rect->dy) );
	FUNC1( FUNC2(rect->width, rect->height) );
}