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
typedef  int /*<<< orphan*/  tmpname ;
struct snd_kcontrol_new {void* put; } ;
struct hda_gen_spec {int dummy; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;

/* Variables and functions */
 int ENOMEM ; 
 int HDA_CTL_WIDGET_MUTE ; 
 int HDA_CTL_WIDGET_VOL ; 
 struct snd_kcontrol_new* FUNC0 (struct hda_gen_spec*,int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int) ; 
 void* cap_single_sw_put ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char const*,...) ; 

__attribute__((used)) static int FUNC3(struct hda_codec *codec, const char *label,
			      int idx, bool is_switch, unsigned int ctl,
			      bool inv_dmic)
{
	struct hda_gen_spec *spec = codec->spec;
	char tmpname[44];
	int type = is_switch ? HDA_CTL_WIDGET_MUTE : HDA_CTL_WIDGET_VOL;
	const char *sfx = is_switch ? "Switch" : "Volume";
	unsigned int chs = inv_dmic ? 1 : 3;
	struct snd_kcontrol_new *knew;

	if (!ctl)
		return 0;

	if (label)
		FUNC2(tmpname, sizeof(tmpname),
			 "%s Capture %s", label, sfx);
	else
		FUNC2(tmpname, sizeof(tmpname),
			 "Capture %s", sfx);
	knew = FUNC0(spec, type, tmpname, idx,
			   FUNC1(ctl, chs));
	if (!knew)
		return -ENOMEM;
	if (is_switch)
		knew->put = cap_single_sw_put;
	if (!inv_dmic)
		return 0;

	/* Make independent right kcontrol */
	if (label)
		FUNC2(tmpname, sizeof(tmpname),
			 "Inverted %s Capture %s", label, sfx);
	else
		FUNC2(tmpname, sizeof(tmpname),
			 "Inverted Capture %s", sfx);
	knew = FUNC0(spec, type, tmpname, idx,
			   FUNC1(ctl, 2));
	if (!knew)
		return -ENOMEM;
	if (is_switch)
		knew->put = cap_single_sw_put;
	return 0;
}