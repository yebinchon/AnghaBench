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
typedef  int u32 ;
struct TYPE_4__ {unsigned int tearsync_pin_cnt; TYPE_1__* fbdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EDOM ; 
 int EINVAL ; 
 int /*<<< orphan*/  RFBI_CONFIG0 ; 
 int /*<<< orphan*/  RFBI_HSYNC_WIDTH ; 
 int /*<<< orphan*/  RFBI_VSYNC_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,int,int,int,int) ; 
 int FUNC1 (unsigned int,int) ; 
 TYPE_2__ rfbi ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(unsigned pin_cnt,
			       unsigned hs_pulse_time, unsigned vs_pulse_time,
			       int hs_pol_inv, int vs_pol_inv, int extif_div)
{
	int hs, vs;
	int min;
	u32 l;

	if (pin_cnt != 1 && pin_cnt != 2)
		return -EINVAL;

	hs = FUNC1(hs_pulse_time, 1);
	vs = FUNC1(vs_pulse_time, 1);
	if (hs < 2)
		return -EDOM;
	if (pin_cnt == 2)
		min = 2;
	else
		min = 4;
	if (vs < min)
		return -EDOM;
	if (vs == hs)
		return -EINVAL;
	rfbi.tearsync_pin_cnt = pin_cnt;
	FUNC0(rfbi.fbdev->dev,
		"setup_tearsync: pins %d hs %d vs %d hs_inv %d vs_inv %d\n",
		pin_cnt, hs, vs, hs_pol_inv, vs_pol_inv);

	FUNC2(1);
	FUNC4(RFBI_HSYNC_WIDTH, hs);
	FUNC4(RFBI_VSYNC_WIDTH, vs);

	l = FUNC3(RFBI_CONFIG0);
	if (hs_pol_inv)
		l &= ~(1 << 21);
	else
		l |= 1 << 21;
	if (vs_pol_inv)
		l &= ~(1 << 20);
	else
		l |= 1 << 20;
	FUNC2(0);

	return 0;
}