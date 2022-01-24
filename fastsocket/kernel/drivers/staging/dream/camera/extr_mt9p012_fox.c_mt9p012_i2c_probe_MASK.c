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
struct mt9p012_work {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_I2C ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct i2c_client* mt9p012_client ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*) ; 
 int /*<<< orphan*/  mt9p012_sensorw ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client,
	const struct i2c_device_id *id)
{
	int rc = 0;
	FUNC0("mt9p012_probe called!\n");

	if (!FUNC1(client->adapter, I2C_FUNC_I2C)) {
		FUNC0("i2c_check_functionality failed\n");
		goto probe_failure;
	}

	mt9p012_sensorw = FUNC3(sizeof(struct mt9p012_work), GFP_KERNEL);
	if (!mt9p012_sensorw) {
		FUNC0("kzalloc failed.\n");
		rc = -ENOMEM;
		goto probe_failure;
	}

	FUNC2(client, mt9p012_sensorw);
	FUNC5(client);
	mt9p012_client = client;

	FUNC4(50);

	FUNC0("mt9p012_probe successed! rc = %d\n", rc);
	return 0;

probe_failure:
	FUNC0("mt9p012_probe failed! rc = %d\n", rc);
	return rc;
}