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
struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_info {int dummy; } ;
struct hda_codec {struct cmi_spec* spec; } ;
struct cmi_spec {int /*<<< orphan*/  input_mux; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct snd_ctl_elem_info*) ; 
 struct hda_codec* FUNC1 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC2(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_info *uinfo)
{
	struct hda_codec *codec = FUNC1(kcontrol);
	struct cmi_spec *spec = codec->spec;
	return FUNC0(spec->input_mux, uinfo);
}