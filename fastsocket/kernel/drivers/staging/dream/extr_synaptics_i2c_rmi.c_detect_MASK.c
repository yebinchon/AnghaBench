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
struct synaptics_ts_data {int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int FUNC0 (struct synaptics_ts_data*,int,char*) ; 
 int FUNC1 (struct synaptics_ts_data*,int,int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int) ; 

__attribute__((used)) static int FUNC6(struct synaptics_ts_data *ts, u32 *panel_version)
{
	int ret;
	int retry = 10;

	ret = FUNC1(ts, 0xf4, 0x01, "reset device");

	while (retry-- > 0) {
		ret = FUNC2(ts->client, 0xe4);
		if (ret >= 0)
			break;
		FUNC3(100);
	}
	if (ret < 0) {
		FUNC4("i2c_smbus_read_byte_data failed\n");
		return ret;
	}

	*panel_version = ret << 8;
	ret = FUNC0(ts, 0xe5, "product minor");
	if (ret < 0)
		return ret;
	*panel_version |= ret;

	ret = FUNC0(ts, 0xe3, "property");
	if (ret < 0)
		return ret;

	FUNC5("synaptics: version %x, product property %x\n",
		*panel_version, ret);
	return 0;
}