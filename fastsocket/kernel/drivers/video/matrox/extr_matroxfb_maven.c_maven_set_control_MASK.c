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
struct maven_gamma {unsigned char reg83; unsigned char reg84; unsigned char reg85; unsigned char reg86; unsigned char reg87; unsigned char reg88; unsigned char reg89; unsigned char reg8a; unsigned char reg8b; } ;
struct maven_data {int /*<<< orphan*/  client; } ;
struct TYPE_3__ {scalar_t__ maximum; scalar_t__ minimum; } ;
struct TYPE_4__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int EINVAL ; 
#define  MATROXFB_CID_DEFLICKER 134 
#define  MATROXFB_CID_TESTOUT 133 
#define  V4L2_CID_BRIGHTNESS 132 
#define  V4L2_CID_CONTRAST 131 
#define  V4L2_CID_GAMMA 130 
#define  V4L2_CID_HUE 129 
#define  V4L2_CID_SATURATION 128 
 int FUNC0 (int) ; 
 scalar_t__* FUNC1 (struct maven_data*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct maven_data*,int*,int*) ; 
 unsigned char FUNC3 (struct maven_data*) ; 
 struct maven_gamma* FUNC4 (struct maven_data*) ; 
 TYPE_2__* maven_controls ; 
 unsigned char FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,unsigned char) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC8 (struct maven_data* md, 
			      struct v4l2_control *p) {
	int i;
	
	i = FUNC0(p->id);
	if (i < 0) return -EINVAL;

	/*
	 * Check if changed.
	 */
	if (p->value == *FUNC1(md, i)) return 0;

	/*
	 * Check limits.
	 */
	if (p->value > maven_controls[i].desc.maximum) return -EINVAL;
	if (p->value < maven_controls[i].desc.minimum) return -EINVAL;

	/*
	 * Store new value.
	 */
	*FUNC1(md, i) = p->value;

	switch (p->id) {
		case V4L2_CID_BRIGHTNESS:
		case V4L2_CID_CONTRAST:
		{
		  int blacklevel, whitelevel;
		  FUNC2(md, &blacklevel, &whitelevel);
		  blacklevel = (blacklevel >> 2) | ((blacklevel & 3) << 8);
		  whitelevel = (whitelevel >> 2) | ((whitelevel & 3) << 8);
		  FUNC7(md->client, 0x0e, blacklevel);
		  FUNC7(md->client, 0x1e, whitelevel);
		}
		break;
		case V4L2_CID_SATURATION:
		{
		  FUNC6(md->client, 0x20, p->value);
		  FUNC6(md->client, 0x22, p->value);
		}
		break;
		case V4L2_CID_HUE:
		{
		  FUNC6(md->client, 0x25, p->value);
		}
		break;
		case V4L2_CID_GAMMA:
		{
		  const struct maven_gamma* g;
		  g = FUNC4(md);
		  FUNC6(md->client, 0x83, g->reg83);
		  FUNC6(md->client, 0x84, g->reg84);
		  FUNC6(md->client, 0x85, g->reg85);
		  FUNC6(md->client, 0x86, g->reg86);
		  FUNC6(md->client, 0x87, g->reg87);
		  FUNC6(md->client, 0x88, g->reg88);
		  FUNC6(md->client, 0x89, g->reg89);
		  FUNC6(md->client, 0x8a, g->reg8a);
		  FUNC6(md->client, 0x8b, g->reg8b);
		}
		break;
		case MATROXFB_CID_TESTOUT:
		{
			unsigned char val 
			  = FUNC5(md->client, 0x8d);
			if (p->value) val |= 0x10;
			else          val &= ~0x10;
			FUNC6(md->client, 0x8d, val);
		}
		break;
		case MATROXFB_CID_DEFLICKER:
		{
		  FUNC6(md->client, 0x93, FUNC3(md));
		}
		break;
	}
	

	return 0;
}