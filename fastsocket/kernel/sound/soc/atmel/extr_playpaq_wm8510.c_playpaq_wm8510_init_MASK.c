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
struct snd_soc_codec {int /*<<< orphan*/  dai; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WM8510_OPCLKDIV ; 
 int WM8510_OPCLKDIV_1 ; 
 int /*<<< orphan*/ * intercon ; 
 int /*<<< orphan*/ * playpaq_dapm_widgets ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_codec*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_codec*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_codec*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_codec*) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_codec *codec)
{
	int i;

	/*
	 * Add DAPM widgets
	 */
	for (i = 0; i < FUNC0(playpaq_dapm_widgets); i++)
		FUNC4(codec, &playpaq_dapm_widgets[i]);



	/*
	 * Setup audio path interconnects
	 */
	FUNC2(codec, intercon, FUNC0(intercon));



	/* always connected pins */
	FUNC3(codec, "Int Mic");
	FUNC3(codec, "Ext Spk");
	FUNC5(codec);



	/* Make CSB show PLL rate */
	FUNC1(codec->dai, WM8510_OPCLKDIV,
				       WM8510_OPCLKDIV_1 | 4);

	return 0;
}