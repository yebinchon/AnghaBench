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
typedef  unsigned int u16 ;
struct spi_transfer {unsigned short* tx_buf; int len; } ;
struct spi_message {int dummy; } ;
struct snd_soc_codec {unsigned int* reg_cache; int /*<<< orphan*/  control_data; } ;

/* Variables and functions */
 unsigned int AD1836_SPI_REG_SHFT ; 
 unsigned int AD1836_SPI_VAL_MSK ; 
 int /*<<< orphan*/  FUNC0 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_message*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct spi_message*) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_codec *codec, unsigned int reg,
		unsigned int value)
{
	u16 *reg_cache = codec->reg_cache;
	int ret = 0;

	if (value != reg_cache[reg]) {
		unsigned short buf;
		struct spi_transfer t = {
			.tx_buf = &buf,
			.len = 2,
		};
		struct spi_message m;

		buf = (reg << AD1836_SPI_REG_SHFT) |
			(value & AD1836_SPI_VAL_MSK);
		FUNC1(&m);
		FUNC0(&t, &m);
		ret = FUNC2(codec->control_data, &m);
		if (ret == 0)
			reg_cache[reg] = value;
	}

	return ret;
}