#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct hda_codec {int single_adc_amp; int spdif_status_reset; struct alc_spec* spec; } ;
struct TYPE_2__ {int own_eapd_ctl; int /*<<< orphan*/  mixer_nid; } ;
struct alc_spec {TYPE_1__ gen; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC1 (struct alc_spec*) ; 
 struct alc_spec* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(struct hda_codec *codec, hda_nid_t mixer_nid)
{
	struct alc_spec *spec = FUNC2(sizeof(*spec), GFP_KERNEL);
	int err;

	if (!spec)
		return -ENOMEM;
	codec->spec = spec;
	FUNC3(&spec->gen);
	spec->gen.mixer_nid = mixer_nid;
	spec->gen.own_eapd_ctl = 1;
	codec->single_adc_amp = 1;
	/* FIXME: do we need this for all Realtek codec models? */
	codec->spdif_status_reset = 1;

	err = FUNC0(codec);
	if (err < 0) {
		FUNC1(spec);
		return err;
	}
	return 0;
}