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
struct mt9d112_work {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_I2C ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct i2c_client* mt9d112_client ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*) ; 
 int /*<<< orphan*/ * mt9d112_sensorw ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client,
	const struct i2c_device_id *id)
{
	int rc = 0;
	if (!FUNC1(client->adapter, I2C_FUNC_I2C)) {
		rc = -ENOTSUPP;
		goto probe_failure;
	}

	mt9d112_sensorw =
		FUNC4(sizeof(struct mt9d112_work), GFP_KERNEL);

	if (!mt9d112_sensorw) {
		rc = -ENOMEM;
		goto probe_failure;
	}

	FUNC2(client, mt9d112_sensorw);
	FUNC5(client);
	mt9d112_client = client;

	FUNC0("mt9d112_probe succeeded!\n");

	return 0;

probe_failure:
	FUNC3(mt9d112_sensorw);
	mt9d112_sensorw = NULL;
	FUNC0("mt9d112_probe failed!\n");
	return rc;
}