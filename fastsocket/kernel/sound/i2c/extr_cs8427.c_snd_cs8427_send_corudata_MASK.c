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
struct snd_i2c_device {struct cs8427* private_data; } ;
struct TYPE_2__ {char* hw_udata; char* hw_status; } ;
struct cs8427 {int* regmap; TYPE_1__ playback; } ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int CS8427_EFTUI ; 
 char CS8427_REG_AUTOINC ; 
 char CS8427_REG_CORU_DATABUF ; 
 size_t CS8427_REG_UDATABUF ; 
 int CS8427_UBMMASK ; 
 int CS8427_UBMZEROS ; 
 int EIO ; 
 scalar_t__ FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct snd_i2c_device*,size_t,int) ; 
 int FUNC4 (struct snd_i2c_device*,int) ; 
 int FUNC5 (struct snd_i2c_device*,char*,int) ; 
 char FUNC6 (unsigned char) ; 

__attribute__((used)) static int FUNC7(struct snd_i2c_device *device,
				    int udata,
				    unsigned char *ndata,
				    int count)
{
	struct cs8427 *chip = device->private_data;
	char *hw_data = udata ?
		chip->playback.hw_udata : chip->playback.hw_status;
	char data[32];
	int err, idx;

	if (!FUNC0(hw_data, ndata, count))
		return 0;
	if ((err = FUNC4(device, udata)) < 0)
		return err;
	FUNC1(hw_data, ndata, count);
	if (udata) {
		FUNC2(data, 0, sizeof(data));
		if (FUNC0(hw_data, data, count) == 0) {
			chip->regmap[CS8427_REG_UDATABUF] &= ~CS8427_UBMMASK;
			chip->regmap[CS8427_REG_UDATABUF] |= CS8427_UBMZEROS |
				CS8427_EFTUI;
			err = FUNC3(device, CS8427_REG_UDATABUF,
						   chip->regmap[CS8427_REG_UDATABUF]);
			return err < 0 ? err : 0;
		}
	}
	data[0] = CS8427_REG_AUTOINC | CS8427_REG_CORU_DATABUF;
	for (idx = 0; idx < count; idx++)
		data[idx + 1] = FUNC6(ndata[idx]);
	if (FUNC5(device, data, count + 1) != count + 1)
		return -EIO;
	return 1;
}