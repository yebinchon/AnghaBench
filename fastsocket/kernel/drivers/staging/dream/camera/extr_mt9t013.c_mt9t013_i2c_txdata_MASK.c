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
struct i2c_msg {unsigned short addr; int len; unsigned char* buf; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_2__ {int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 TYPE_1__* mt9t013_client ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int32_t FUNC2(unsigned short saddr,
	unsigned char *txdata, int length)
{
	struct i2c_msg msg[] = {
	{
		.addr = saddr,
		.flags = 0,
		.len = length,
		.buf = txdata,
	},
	};

	if (FUNC0(mt9t013_client->adapter, msg, 1) < 0) {
		FUNC1("mt9t013_i2c_txdata failed\n");
		return -EIO;
	}

	return 0;
}