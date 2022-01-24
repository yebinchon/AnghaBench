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
struct mt9t013_work {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; int /*<<< orphan*/  adapter; } ;

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
 int /*<<< orphan*/  FUNC5 (int) ; 
 struct i2c_client* mt9t013_client ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*) ; 
 int /*<<< orphan*/ * mt9t013_sensorw ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client,
	const struct i2c_device_id *id)
{
	int rc = 0;
	if (!FUNC1(client->adapter, I2C_FUNC_I2C)) {
		rc = -ENOTSUPP;
		goto probe_failure;
	}

	mt9t013_sensorw =
		FUNC4(sizeof(struct mt9t013_work), GFP_KERNEL);

	if (!mt9t013_sensorw) {
		rc = -ENOMEM;
		goto probe_failure;
	}

	FUNC2(client, mt9t013_sensorw);
	FUNC6(client);
	mt9t013_client = client;
	mt9t013_client->addr = mt9t013_client->addr >> 1;
	FUNC5(50);

	FUNC0("i2c probe ok\n");
	return 0;

probe_failure:
	FUNC3(mt9t013_sensorw);
	mt9t013_sensorw = NULL;
	FUNC7("i2c probe failure %d\n", rc);
	return rc;
}