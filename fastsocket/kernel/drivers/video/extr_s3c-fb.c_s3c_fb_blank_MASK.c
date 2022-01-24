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
struct s3c_fb_win {unsigned int index; struct s3c_fb* parent; } ;
struct s3c_fb {int enabled; scalar_t__ regs; int /*<<< orphan*/  dev; } ;
struct fb_info {struct s3c_fb_win* par; } ;

/* Variables and functions */
#define  FB_BLANK_HSYNC_SUSPEND 132 
#define  FB_BLANK_NORMAL 131 
#define  FB_BLANK_POWERDOWN 130 
#define  FB_BLANK_UNBLANK 129 
#define  FB_BLANK_VSYNC_SUSPEND 128 
 scalar_t__ FUNC0 (unsigned int) ; 
 int WINCONx_ENWIN ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int WINxMAP_MAP ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct s3c_fb*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(int blank_mode, struct fb_info *info)
{
	struct s3c_fb_win *win = info->par;
	struct s3c_fb *sfb = win->parent;
	unsigned int index = win->index;
	u32 wincon;

	FUNC3(sfb->dev, "blank mode %d\n", blank_mode);

	wincon = FUNC4(sfb->regs + FUNC0(index));

	switch (blank_mode) {
	case FB_BLANK_POWERDOWN:
		wincon &= ~WINCONx_ENWIN;
		sfb->enabled &= ~(1 << index);
		/* fall through to FB_BLANK_NORMAL */

	case FB_BLANK_NORMAL:
		/* disable the DMA and display 0x0 (black) */
		FUNC6(WINxMAP_MAP | FUNC2(0x0),
		       sfb->regs + FUNC1(index));
		break;

	case FB_BLANK_UNBLANK:
		FUNC6(0x0, sfb->regs + FUNC1(index));
		wincon |= WINCONx_ENWIN;
		sfb->enabled |= (1 << index);
		break;

	case FB_BLANK_VSYNC_SUSPEND:
	case FB_BLANK_HSYNC_SUSPEND:
	default:
		return 1;
	}

	FUNC6(wincon, sfb->regs + FUNC0(index));

	/* Check the enabled state to see if we need to be running the
	 * main LCD interface, as if there are no active windows then
	 * it is highly likely that we also do not need to output
	 * anything.
	 */

	/* We could do something like the following code, but the current
	 * system of using framebuffer events means that we cannot make
	 * the distinction between just window 0 being inactive and all
	 * the windows being down.
	 *
	 * s3c_fb_enable(sfb, sfb->enabled ? 1 : 0);
	*/

	/* we're stuck with this until we can do something about overriding
	 * the power control using the blanking event for a single fb.
	 */
	if (index == 0)
		FUNC5(sfb, blank_mode != FB_BLANK_POWERDOWN ? 1 : 0);

	return 0;
}