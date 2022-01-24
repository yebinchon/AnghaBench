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
typedef  unsigned int u8 ;
struct snd_soc_codec {unsigned int* reg_cache; int /*<<< orphan*/  dev; struct i2c_client* control_data; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 unsigned int CS4270_FIRSTREG ; 
 unsigned int CS4270_LASTREG ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct i2c_client*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_codec *codec, unsigned int reg,
			    unsigned int value)
{
	u8 *cache = codec->reg_cache;

	if ((reg < CS4270_FIRSTREG) || (reg > CS4270_LASTREG))
		return -EIO;

	/* Only perform an I2C operation if the new value is different */
	if (cache[reg - CS4270_FIRSTREG] != value) {
		struct i2c_client *client = codec->control_data;
		if (FUNC1(client, reg, value)) {
			FUNC0(codec->dev, "i2c write failed\n");
			return -EIO;
		}

		/* We've written to the hardware, so update the cache */
		cache[reg - CS4270_FIRSTREG] = value;
	}

	return 0;
}