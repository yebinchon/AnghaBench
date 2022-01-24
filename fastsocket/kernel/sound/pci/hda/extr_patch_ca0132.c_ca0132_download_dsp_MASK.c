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
struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {scalar_t__ dsp_state; } ;

/* Variables and functions */
 scalar_t__ DSP_DOWNLOADED ; 
 scalar_t__ DSP_DOWNLOADING ; 
 scalar_t__ DSP_DOWNLOAD_FAILED ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*) ; 

__attribute__((used)) static void FUNC3(struct hda_codec *codec)
{
	struct ca0132_spec *spec = codec->spec;

#ifndef CONFIG_SND_HDA_CODEC_CA0132_DSP
	return; /* NOP */
#endif

	FUNC2(codec);
	spec->dsp_state = DSP_DOWNLOADING;
	if (!FUNC0(codec))
		spec->dsp_state = DSP_DOWNLOAD_FAILED;
	else
		spec->dsp_state = DSP_DOWNLOADED;

	if (spec->dsp_state == DSP_DOWNLOADED)
		FUNC1(codec, true);
}