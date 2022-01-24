#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct spi_device {int bits_per_word; int /*<<< orphan*/  dev; int /*<<< orphan*/  mode; } ;
struct snd_soc_codec {int num_dai; int /*<<< orphan*/  reg_cache_size; int /*<<< orphan*/  reg_cache; struct spi_device* control_data; struct ak4104_private* private_data; TYPE_1__* dai; int /*<<< orphan*/  owner; int /*<<< orphan*/  name; int /*<<< orphan*/ * dev; int /*<<< orphan*/  dapm_paths; int /*<<< orphan*/  dapm_widgets; int /*<<< orphan*/  mutex; } ;
struct ak4104_private {int /*<<< orphan*/  reg_cache; struct snd_soc_codec codec; } ;
struct TYPE_3__ {int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int AK4104_CONTROL1_PW ; 
 int AK4104_CONTROL1_RSTN ; 
 int /*<<< orphan*/  AK4104_NUM_REGS ; 
 int /*<<< orphan*/  AK4104_REG_CONTROL1 ; 
 int /*<<< orphan*/  AK4104_REG_RESERVED ; 
 int /*<<< orphan*/  AK4104_REG_TX ; 
 int AK4104_RESERVED_VAL ; 
 int AK4104_TX_TXE ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SPI_MODE_0 ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 struct snd_soc_codec* ak4104_codec ; 
 TYPE_1__ ak4104_dai ; 
 int FUNC1 (struct snd_soc_codec*) ; 
 int FUNC2 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct ak4104_private*) ; 
 struct ak4104_private* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (struct spi_device*,struct ak4104_private*) ; 
 int FUNC11 (struct spi_device*) ; 

__attribute__((used)) static int FUNC12(struct spi_device *spi)
{
	struct snd_soc_codec *codec;
	struct ak4104_private *ak4104;
	int ret, val;

	spi->bits_per_word = 8;
	spi->mode = SPI_MODE_0;
	ret = FUNC11(spi);
	if (ret < 0)
		return ret;

	ak4104 = FUNC7(sizeof(struct ak4104_private), GFP_KERNEL);
	if (!ak4104) {
		FUNC4(&spi->dev, "could not allocate codec\n");
		return -ENOMEM;
	}

	codec = &ak4104->codec;
	FUNC8(&codec->mutex);
	FUNC0(&codec->dapm_widgets);
	FUNC0(&codec->dapm_paths);

	codec->dev = &spi->dev;
	codec->name = DRV_NAME;
	codec->owner = THIS_MODULE;
	codec->dai = &ak4104_dai;
	codec->num_dai = 1;
	codec->private_data = ak4104;
	codec->control_data = spi;
	codec->reg_cache = ak4104->reg_cache;
	codec->reg_cache_size = AK4104_NUM_REGS;

	/* read all regs and fill the cache */
	ret = FUNC1(codec);
	if (ret < 0) {
		FUNC4(&spi->dev, "failed to fill register cache\n");
		return ret;
	}

	/* read the 'reserved' register - according to the datasheet, it
	 * should contain 0x5b. Not a good way to verify the presence of
	 * the device, but there is no hardware ID register. */
	if (FUNC2(codec, AK4104_REG_RESERVED) !=
					 AK4104_RESERVED_VAL) {
		ret = -ENODEV;
		goto error_free_codec;
	}

	/* set power-up and non-reset bits */
	val = FUNC2(codec, AK4104_REG_CONTROL1);
	val |= AK4104_CONTROL1_PW | AK4104_CONTROL1_RSTN;
	ret = FUNC3(codec, AK4104_REG_CONTROL1, val);
	if (ret < 0)
		goto error_free_codec;

	/* enable transmitter */
	val = FUNC2(codec, AK4104_REG_TX);
	val |= AK4104_TX_TXE;
	ret = FUNC3(codec, AK4104_REG_TX, val);
	if (ret < 0)
		goto error_free_codec;

	ak4104_codec = codec;
	ret = FUNC9(&ak4104_dai);
	if (ret < 0) {
		FUNC4(&spi->dev, "failed to register DAI\n");
		goto error_free_codec;
	}

	FUNC10(spi, ak4104);
	FUNC5(&spi->dev, "SPI device initialized\n");
	return 0;

error_free_codec:
	FUNC6(ak4104);
	ak4104_dai.dev = NULL;
	return ret;
}