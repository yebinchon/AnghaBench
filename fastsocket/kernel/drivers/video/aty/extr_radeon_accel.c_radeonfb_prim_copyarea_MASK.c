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
typedef  int u32 ;
struct radeonfb_info {int dp_gui_master_cntl; } ;
struct fb_copyarea {int width; int height; int dx; int dy; int sx; int sy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP_CNTL ; 
 int /*<<< orphan*/  DP_GUI_MASTER_CNTL ; 
 int DP_SRC_SOURCE_MEMORY ; 
 int /*<<< orphan*/  DP_WRITE_MSK ; 
 int /*<<< orphan*/  DSTCACHE_CTLSTAT ; 
 int /*<<< orphan*/  DST_HEIGHT_WIDTH ; 
 int DST_X_LEFT_TO_RIGHT ; 
 int DST_Y_TOP_TO_BOTTOM ; 
 int /*<<< orphan*/  DST_Y_X ; 
 int GMC_BRUSH_NONE ; 
 int GMC_SRC_DSTCOLOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int RB2D_DC_FLUSH_ALL ; 
 int ROP3_S ; 
 int /*<<< orphan*/  SRC_Y_X ; 
 int WAIT_2D_IDLECLEAN ; 
 int WAIT_DMA_GUI_IDLE ; 
 int /*<<< orphan*/  WAIT_UNTIL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct radeonfb_info *rinfo, 
				   const struct fb_copyarea *area)
{
	int xdir, ydir;
	u32 sx, sy, dx, dy, w, h;

	w = area->width; h = area->height;
	dx = area->dx; dy = area->dy;
	sx = area->sx; sy = area->sy;
	xdir = sx - dx;
	ydir = sy - dy;

	if ( xdir < 0 ) { sx += w-1; dx += w-1; }
	if ( ydir < 0 ) { sy += h-1; dy += h-1; }

	FUNC1(3);
	FUNC0(DP_GUI_MASTER_CNTL,
		rinfo->dp_gui_master_cntl /* i.e. GMC_DST_32BPP */
		| GMC_BRUSH_NONE
		| GMC_SRC_DSTCOLOR
		| ROP3_S 
		| DP_SRC_SOURCE_MEMORY );
	FUNC0(DP_WRITE_MSK, 0xffffffff);
	FUNC0(DP_CNTL, (xdir>=0 ? DST_X_LEFT_TO_RIGHT : 0)
			| (ydir>=0 ? DST_Y_TOP_TO_BOTTOM : 0));

	FUNC1(2);
	FUNC0(DSTCACHE_CTLSTAT, RB2D_DC_FLUSH_ALL);
	FUNC0(WAIT_UNTIL, (WAIT_2D_IDLECLEAN | WAIT_DMA_GUI_IDLE));

	FUNC1(3);
	FUNC0(SRC_Y_X, (sy << 16) | sx);
	FUNC0(DST_Y_X, (dy << 16) | dx);
	FUNC0(DST_HEIGHT_WIDTH, (h << 16) | w);
}