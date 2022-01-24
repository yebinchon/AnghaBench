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
typedef  int /*<<< orphan*/  tmp ;
struct spi_device {int /*<<< orphan*/  dev; } ;
struct snd_soc_codec {unsigned int* reg_cache; unsigned int reg_cache_size; struct spi_device* control_data; } ;

/* Variables and functions */
 unsigned int AK4104_REG_MASK ; 
 unsigned int AK4104_WRITE ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (struct spi_device*,unsigned int*,int) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_codec *codec, unsigned int reg,
			    unsigned int value)
{
	u8 *cache = codec->reg_cache;
	struct spi_device *spi = codec->control_data;

	if (reg >= codec->reg_cache_size)
		return -EINVAL;

	reg &= AK4104_REG_MASK;
	reg |= AK4104_WRITE;

	/* only write to the hardware if value has changed */
	if (cache[reg] != value) {
		u8 tmp[2] = { reg, value };
		if (FUNC1(spi, tmp, sizeof(tmp))) {
			FUNC0(&spi->dev, "SPI write failed\n");
			return -EIO;
		}

		cache[reg] = value;
	}

	return 0;
}