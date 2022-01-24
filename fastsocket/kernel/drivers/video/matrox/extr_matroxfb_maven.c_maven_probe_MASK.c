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
struct maven_data {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2C_FUNC_PROTOCOL_MANGLING ; 
 int I2C_FUNC_SMBUS_BYTE_DATA ; 
 int I2C_FUNC_SMBUS_WRITE_WORD_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_adapter*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,struct maven_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct maven_data*) ; 
 struct maven_data* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct i2c_client*) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client,
		       const struct i2c_device_id *id)
{
	struct i2c_adapter *adapter = client->adapter;
	int err = -ENODEV;
	struct maven_data* data;

	if (!FUNC0(adapter, I2C_FUNC_SMBUS_WRITE_WORD_DATA |
					      I2C_FUNC_SMBUS_BYTE_DATA |
					      I2C_FUNC_PROTOCOL_MANGLING))
		goto ERROR0;
	if (!(data = FUNC3(sizeof(*data), GFP_KERNEL))) {
		err = -ENOMEM;
		goto ERROR0;
	}
	FUNC1(client, data);
	err = FUNC4(client);
	if (err)
		goto ERROR4;
	return 0;
ERROR4:;
	FUNC2(data);
ERROR0:;
	return err;
}