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
struct mbxfb_planeorder {int bottom; int top; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GSCADR ; 
 unsigned long GSCADR_BLEND_GFX ; 
 int /*<<< orphan*/  GSCADR_BLEND_POS ; 
 unsigned long GSCADR_BLEND_VID ; 
#define  MBXFB_PLANE_GRAPHICS 129 
#define  MBXFB_PLANE_VIDEO 128 
 int /*<<< orphan*/  VSCADR ; 
 unsigned long VSCADR_BLEND_GFX ; 
 int /*<<< orphan*/  VSCADR_BLEND_POS ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mbxfb_planeorder *porder)
{
	unsigned long gscadr, vscadr;

	if (porder->bottom == porder->top)
		return -EINVAL;

	gscadr = FUNC1(GSCADR);
	vscadr = FUNC1(VSCADR);

	gscadr &= ~(FUNC0(GSCADR_BLEND_POS));
	vscadr &= ~(FUNC0(VSCADR_BLEND_POS));

	switch (porder->bottom) {
	case MBXFB_PLANE_GRAPHICS:
		gscadr |= GSCADR_BLEND_GFX;
		break;
	case MBXFB_PLANE_VIDEO:
		vscadr |= VSCADR_BLEND_GFX;
		break;
	default:
		return -EINVAL;
	}

	switch (porder->top) {
	case MBXFB_PLANE_GRAPHICS:
		gscadr |= GSCADR_BLEND_VID;
		break;
	case MBXFB_PLANE_VIDEO:
		vscadr |= GSCADR_BLEND_VID;
		break;
	default:
		return -EINVAL;
	}

	FUNC2(vscadr, VSCADR);
	FUNC2(gscadr, GSCADR);

	return 0;

}