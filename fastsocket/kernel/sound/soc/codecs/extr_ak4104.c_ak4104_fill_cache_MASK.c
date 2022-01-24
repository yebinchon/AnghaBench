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
typedef  int u8 ;
struct spi_device {int /*<<< orphan*/  dev; } ;
struct snd_soc_codec {int* reg_cache; int reg_cache_size; struct spi_device* control_data; } ;

/* Variables and functions */
 int AK4104_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct spi_device*,int) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_codec *codec)
{
	int i;
	u8 *reg_cache = codec->reg_cache;
	struct spi_device *spi = codec->control_data;

	for (i = 0; i < codec->reg_cache_size; i++) {
		int ret = FUNC1(spi, i | AK4104_READ);
		if (ret < 0) {
			FUNC0(&spi->dev, "SPI write failure\n");
			return ret;
		}

		reg_cache[i] = ret;
	}

	return 0;
}