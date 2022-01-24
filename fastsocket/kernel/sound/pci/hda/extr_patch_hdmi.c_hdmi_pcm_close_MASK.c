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
struct hdmi_spec_per_pin {int dummy; } ;
struct hdmi_spec_per_cvt {scalar_t__ assigned; } ;
struct hdmi_spec {int dummy; } ;
struct hda_pcm_stream {int /*<<< orphan*/  nid; } ;
struct hda_codec {struct hdmi_spec* spec; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct hdmi_spec*,int /*<<< orphan*/ ) ; 
 struct hdmi_spec_per_cvt* FUNC1 (struct hdmi_spec*,int) ; 
 struct hdmi_spec_per_pin* FUNC2 (struct hdmi_spec*,int) ; 
 int FUNC3 (struct hdmi_spec*,struct hda_pcm_stream*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*,int) ; 

__attribute__((used)) static int FUNC6(struct hda_pcm_stream *hinfo,
			  struct hda_codec *codec,
			  struct snd_pcm_substream *substream)
{
	struct hdmi_spec *spec = codec->spec;
	int cvt_idx, pin_idx;
	struct hdmi_spec_per_cvt *per_cvt;
	struct hdmi_spec_per_pin *per_pin;

	if (hinfo->nid) {
		cvt_idx = FUNC0(spec, hinfo->nid);
		if (FUNC4(cvt_idx < 0))
			return -EINVAL;
		per_cvt = FUNC1(spec, cvt_idx);

		FUNC4(!per_cvt->assigned);
		per_cvt->assigned = 0;
		hinfo->nid = 0;

		pin_idx = FUNC3(spec, hinfo);
		if (FUNC4(pin_idx < 0))
			return -EINVAL;
		per_pin = FUNC2(spec, pin_idx);

		FUNC5(codec, pin_idx);
	}
	return 0;
}