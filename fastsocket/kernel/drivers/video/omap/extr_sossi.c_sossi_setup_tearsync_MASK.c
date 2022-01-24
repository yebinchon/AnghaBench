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
struct TYPE_4__ {int /*<<< orphan*/  fck; TYPE_1__* fbdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EDOM ; 
 int EINVAL ; 
 int /*<<< orphan*/  SOSSI_TEARING_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,int,int) ; 
 int FUNC3 (unsigned int,int) ; 
 TYPE_2__ sossi ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(unsigned pin_cnt,
				unsigned hs_pulse_time, unsigned vs_pulse_time,
				int hs_pol_inv, int vs_pol_inv, int div)
{
	int hs, vs;
	u32 l;

	if (pin_cnt != 1 || div < 1 || div > 8)
		return -EINVAL;

	hs = FUNC3(hs_pulse_time, div);
	vs = FUNC3(vs_pulse_time, div);
	if (vs < 8 || vs <= hs || vs >= (1 << 12))
		return -EDOM;
	vs /= 8;
	vs--;
	if (hs > 8)
		hs = 8;
	if (hs)
		hs--;

	FUNC2(sossi.fbdev->dev,
		"setup_tearsync: hs %d vs %d hs_inv %d vs_inv %d\n",
		hs, vs, hs_pol_inv, vs_pol_inv);

	FUNC1(sossi.fck);
	l = FUNC4(SOSSI_TEARING_REG);
	l &= ~((1 << 15) - 1);
	l |= vs << 3;
	l |= hs;
	if (hs_pol_inv)
		l |= 1 << 29;
	else
		l &= ~(1 << 29);
	if (vs_pol_inv)
		l |= 1 << 28;
	else
		l &= ~(1 << 28);
	FUNC5(SOSSI_TEARING_REG, l);
	FUNC0(sossi.fck);

	return 0;
}