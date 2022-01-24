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
typedef  int u8 ;
struct sca3000_state {int dummy; } ;
struct sca3000_chip_info {int measurement_mode_freq; int option_mode_1_freq; int option_mode_2_freq; } ;

/* Variables and functions */
#define  SCA3000_MEAS_MODE_NORMAL 130 
#define  SCA3000_MEAS_MODE_OP_1 129 
#define  SCA3000_MEAS_MODE_OP_2 128 
 int /*<<< orphan*/  SCA3000_REG_ADDR_MODE ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int FUNC1 (struct sca3000_state*,int /*<<< orphan*/ ,int**,int) ; 

__attribute__((used)) static inline int FUNC2(struct sca3000_state *st,
					  const struct sca3000_chip_info *info,
					  int *base_freq)
{
	int ret;
	u8 *rx;

	ret = FUNC1(st, SCA3000_REG_ADDR_MODE, &rx, 1);
	if (ret)
		goto error_ret;
	switch (0x03 & rx[1]) {
	case SCA3000_MEAS_MODE_NORMAL:
		*base_freq = info->measurement_mode_freq;
		break;
	case SCA3000_MEAS_MODE_OP_1:
		*base_freq = info->option_mode_1_freq;
		break;
	case SCA3000_MEAS_MODE_OP_2:
		*base_freq = info->option_mode_2_freq;
		break;
	};
	FUNC0(rx);
error_ret:
	return ret;
}