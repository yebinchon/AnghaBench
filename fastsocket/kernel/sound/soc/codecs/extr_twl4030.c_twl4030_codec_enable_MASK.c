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
typedef  int /*<<< orphan*/  u8 ;
struct twl4030_priv {int codec_powered; } ;
struct snd_soc_codec {struct twl4030_priv* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  TWL4030_CODECPDZ ; 
 int /*<<< orphan*/  TWL4030_REG_CODEC_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct snd_soc_codec *codec, int enable)
{
	struct twl4030_priv *twl4030 = codec->private_data;
	u8 mode;

	if (enable == twl4030->codec_powered)
		return;

	mode = FUNC0(codec, TWL4030_REG_CODEC_MODE);
	if (enable)
		mode |= TWL4030_CODECPDZ;
	else
		mode &= ~TWL4030_CODECPDZ;

	FUNC1(codec, TWL4030_REG_CODEC_MODE, mode);
	twl4030->codec_powered = enable;

	/* REVISIT: this delay is present in TI sample drivers */
	/* but there seems to be no TRM requirement for it     */
	FUNC2(10);
}