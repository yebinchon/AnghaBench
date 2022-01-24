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
struct snd_soc_codec {unsigned short (* read ) (struct snd_soc_codec*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* write ) (struct snd_soc_codec*,int /*<<< orphan*/ ,unsigned short) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_3D_CONTROL ; 
 int /*<<< orphan*/  AC97_GPIO_CFG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  audio_map ; 
 int /*<<< orphan*/  mioa701_dapm_widgets ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_codec*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_codec*) ; 
 unsigned short FUNC5 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_codec*,int /*<<< orphan*/ ,unsigned short) ; 
 unsigned short FUNC7 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_codec*,int /*<<< orphan*/ ,unsigned short) ; 

__attribute__((used)) static int FUNC9(struct snd_soc_codec *codec)
{
	unsigned short reg;

	/* Add mioa701 specific widgets */
	FUNC3(codec, FUNC0(mioa701_dapm_widgets));

	/* Set up mioa701 specific audio path audio_mapnects */
	FUNC1(codec, FUNC0(audio_map));

	/* Prepare GPIO8 for rear speaker amplifier */
	reg = codec->read(codec, AC97_GPIO_CFG);
	codec->write(codec, AC97_GPIO_CFG, reg | 0x0100);

	/* Prepare MIC input */
	reg = codec->read(codec, AC97_3D_CONTROL);
	codec->write(codec, AC97_3D_CONTROL, reg | 0xc000);

	FUNC2(codec, "Front Speaker");
	FUNC2(codec, "Rear Speaker");
	FUNC2(codec, "Front Mic");
	FUNC2(codec, "GSM Line In");
	FUNC2(codec, "GSM Line Out");
	FUNC4(codec);

	return 0;
}