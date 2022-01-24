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
struct snd_pcm_substream {int dummy; } ;
struct hdmi_spec {int /*<<< orphan*/  multiout; } ;
struct hda_pcm_stream {int dummy; } ;
struct hda_codec {struct hdmi_spec* spec; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_VERB_SET_CHANNEL_STREAMID ; 
 int /*<<< orphan*/  AC_VERB_SET_STREAM_FORMAT ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int) ; 
 int /*<<< orphan*/ * nvhdmi_con_nids_7x ; 
 int /*<<< orphan*/  nvhdmi_master_con_nid_7x ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hda_codec*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct hda_pcm_stream *hinfo,
				   struct hda_codec *codec,
				   struct snd_pcm_substream *substream)
{
	struct hdmi_spec *spec = codec->spec;
	int i;

	FUNC1(codec, nvhdmi_master_con_nid_7x,
			0, AC_VERB_SET_CHANNEL_STREAMID, 0);
	for (i = 0; i < 4; i++) {
		/* set the stream id */
		FUNC1(codec, nvhdmi_con_nids_7x[i], 0,
				AC_VERB_SET_CHANNEL_STREAMID, 0);
		/* set the stream format */
		FUNC1(codec, nvhdmi_con_nids_7x[i], 0,
				AC_VERB_SET_STREAM_FORMAT, 0);
	}

	/* The audio hardware sends a channel count of 0x7 (8ch) when all the
	 * streams are disabled. */
	FUNC0(codec, 8);

	return FUNC2(codec, &spec->multiout);
}