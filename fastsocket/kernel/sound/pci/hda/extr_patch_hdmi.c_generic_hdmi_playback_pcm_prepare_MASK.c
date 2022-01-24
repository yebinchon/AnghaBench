#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct hdmi_spec {int dummy; } ;
struct hda_pcm_stream {int /*<<< orphan*/  nid; } ;
struct hda_codec {struct hdmi_spec* spec; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;
struct TYPE_4__ {int /*<<< orphan*/  pin_nid; } ;
struct TYPE_3__ {int /*<<< orphan*/  channels; } ;

/* Variables and functions */
 int FUNC0 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (struct hdmi_spec*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,int,int,struct snd_pcm_substream*) ; 
 int FUNC4 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int FUNC5 (struct hdmi_spec*,struct hda_pcm_stream*) ; 

__attribute__((used)) static int FUNC6(struct hda_pcm_stream *hinfo,
					   struct hda_codec *codec,
					   unsigned int stream_tag,
					   unsigned int format,
					   struct snd_pcm_substream *substream)
{
	hda_nid_t cvt_nid = hinfo->nid;
	struct hdmi_spec *spec = codec->spec;
	int pin_idx = FUNC5(spec, hinfo);
	hda_nid_t pin_nid = FUNC1(spec, pin_idx)->pin_nid;
	bool non_pcm;

	non_pcm = FUNC0(codec, cvt_nid);

	FUNC2(codec, cvt_nid, substream->runtime->channels);

	FUNC3(codec, pin_idx, non_pcm, substream);

	return FUNC4(codec, cvt_nid, pin_nid, stream_tag, format);
}