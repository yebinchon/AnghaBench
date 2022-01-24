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
struct max1363_state {TYPE_1__* current_mode; struct i2c_client* client; } ;
struct iio_dev {struct max1363_state* dev_data; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int numvals; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct iio_dev* FUNC0 (struct device*) ; 
 int FUNC1 (struct i2c_client*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,char*,...) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				   struct device_attribute *attr,
				   char *buf)
{
	struct iio_dev *dev_info = FUNC0(dev);
	struct max1363_state *st = dev_info->dev_data;
	int len = 0, ret, i;
	struct i2c_client *client = st->client;
	char *rxbuf;

	if (st->current_mode->numvals == 0)
		return 0;
	rxbuf = FUNC3(st->current_mode->numvals*2, GFP_KERNEL);
	if (rxbuf == NULL)
		return -ENOMEM;

	/* Interpretation depends on whether these are signed or not!*/
	/* Assume not for now */
	ret = FUNC1(client, rxbuf, st->current_mode->numvals*2);

	if (ret < 0)
		return ret;
	for (i = 0; i < st->current_mode->numvals; i++)
		len += FUNC4(buf+len, "%d ",
			       ((int)(rxbuf[i*2+0]&0x0F) << 8)
			       + ((int)(rxbuf[i*2+1])));
	FUNC2(rxbuf);
	len += FUNC4(buf + len, "\n");

	return len;
}