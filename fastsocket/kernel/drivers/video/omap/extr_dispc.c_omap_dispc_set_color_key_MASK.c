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
typedef  int /*<<< orphan*/  u32 ;
struct omapfb_color_key {int channel_out; int key_type; int /*<<< orphan*/  background; int /*<<< orphan*/  trans_key; } ;
struct TYPE_2__ {struct omapfb_color_key color_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISPC_CONFIG ; 
 int /*<<< orphan*/  DISPC_DEFAULT_COLOR0 ; 
 int /*<<< orphan*/  DISPC_DEFAULT_COLOR1 ; 
 int /*<<< orphan*/  DISPC_TRANS_COLOR0 ; 
 int /*<<< orphan*/  DISPC_TRANS_COLOR1 ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
#define  OMAPFB_CHANNEL_OUT_DIGIT 132 
#define  OMAPFB_CHANNEL_OUT_LCD 131 
#define  OMAPFB_COLOR_KEY_DISABLED 130 
#define  OMAPFB_COLOR_KEY_GFX_DST 129 
#define  OMAPFB_COLOR_KEY_VID_SRC 128 
 TYPE_1__ dispc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct omapfb_color_key *ck)
{
	u32 df_reg, tr_reg;
	int shift, val;

	switch (ck->channel_out) {
	case OMAPFB_CHANNEL_OUT_LCD:
		df_reg = DISPC_DEFAULT_COLOR0;
		tr_reg = DISPC_TRANS_COLOR0;
		shift = 10;
		break;
	case OMAPFB_CHANNEL_OUT_DIGIT:
		df_reg = DISPC_DEFAULT_COLOR1;
		tr_reg = DISPC_TRANS_COLOR1;
		shift = 12;
		break;
	default:
		return -EINVAL;
	}
	switch (ck->key_type) {
	case OMAPFB_COLOR_KEY_DISABLED:
		val = 0;
		break;
	case OMAPFB_COLOR_KEY_GFX_DST:
		val = 1;
		break;
	case OMAPFB_COLOR_KEY_VID_SRC:
		val = 3;
		break;
	default:
		return -EINVAL;
	}
	FUNC3(1);
	FUNC1(DISPC_CONFIG, FUNC0(shift, 2), val << shift);

	if (val != 0)
		FUNC2(tr_reg, ck->trans_key);
	FUNC2(df_reg, ck->background);
	FUNC3(0);

	dispc.color_key = *ck;

	return 0;
}