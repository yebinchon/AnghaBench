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
struct vx_core {int dummy; } ;
struct firmware {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct vx_core*,struct firmware const*) ; 
 int FUNC2 (struct vx_core*,struct firmware const*) ; 
 int FUNC3 (struct vx_core*,struct firmware const*) ; 
 int FUNC4 (struct vx_core*) ; 
 int FUNC5 (struct vx_core*,struct firmware const*) ; 

__attribute__((used)) static int FUNC6(struct vx_core *vx, int index, const struct firmware *fw)
{
	int err;

	switch (index) {
	case 0:
		/* xilinx boot */
		if ((err = FUNC4(vx)) < 0)
			return err;
		if ((err = FUNC3(vx, fw)) < 0)
			return err;
		return 0;
	case 1:
		/* xilinx image */
		return FUNC5(vx, fw);
	case 2:
		/* DSP boot */
		return FUNC1(vx, fw);
	case 3:
		/* DSP image */
		return FUNC2(vx, fw);
	default:
		FUNC0();
		return -EINVAL;
	}
}