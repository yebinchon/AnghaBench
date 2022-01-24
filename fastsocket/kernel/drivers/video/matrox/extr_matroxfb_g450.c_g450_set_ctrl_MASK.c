#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct v4l2_control {int id; scalar_t__ value; } ;
struct matrox_fb_info {int dummy; } ;
struct TYPE_3__ {scalar_t__ maximum; scalar_t__ minimum; } ;
struct TYPE_4__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int EINVAL ; 
#define  MATROXFB_CID_TESTOUT 132 
#define  V4L2_CID_BRIGHTNESS 131 
#define  V4L2_CID_CONTRAST 130 
#define  V4L2_CID_HUE 129 
#define  V4L2_CID_SATURATION 128 
 unsigned char FUNC0 (struct matrox_fb_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct matrox_fb_info*,int,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (struct matrox_fb_info*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct matrox_fb_info*,int*,int*) ; 
 TYPE_2__* g450_controls ; 
 int FUNC4 (int) ; 
 scalar_t__* FUNC5 (struct matrox_fb_info*,int) ; 

__attribute__((used)) static int FUNC6(void* md, struct v4l2_control *p) {
	int i;
	struct matrox_fb_info *minfo = md;
	
	i = FUNC4(p->id);
	if (i < 0) return -EINVAL;

	/*
	 * Check if changed.
	 */
	if (p->value == *FUNC5(minfo, i)) return 0;

	/*
	 * Check limits.
	 */
	if (p->value > g450_controls[i].desc.maximum) return -EINVAL;
	if (p->value < g450_controls[i].desc.minimum) return -EINVAL;

	/*
	 * Store new value.
	 */
	*FUNC5(minfo, i) = p->value;

	switch (p->id) {
		case V4L2_CID_BRIGHTNESS:
		case V4L2_CID_CONTRAST:
			{
				int blacklevel, whitelevel;
				FUNC3(minfo, &blacklevel, &whitelevel);
				FUNC2(minfo, 0x0e, blacklevel);
				FUNC2(minfo, 0x1e, whitelevel);
			}
			break;
		case V4L2_CID_SATURATION:
			FUNC1(minfo, 0x20, p->value);
			FUNC1(minfo, 0x22, p->value);
			break;
		case V4L2_CID_HUE:
			FUNC1(minfo, 0x25, p->value);
			break;
		case MATROXFB_CID_TESTOUT:
			{
				unsigned char val = FUNC0(minfo, 0x05);
				if (p->value) val |=  0x02;
				else          val &= ~0x02;
				FUNC1(minfo, 0x05, val);
			}
			break;
	}
	

	return 0;
}