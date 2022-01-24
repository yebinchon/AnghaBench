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
struct hda_codec {int dummy; } ;
typedef  int /*<<< orphan*/  map_slave_func_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  check_slave_present ; 
 int /*<<< orphan*/  init_slave_0dB ; 
 int /*<<< orphan*/  init_slave_unmute ; 
 int FUNC0 (struct hda_codec*,char const* const*,char const*,int /*<<< orphan*/ ,struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_kcontrol*,int /*<<< orphan*/ ) ; 
 scalar_t__ snd_ctl_add_slave ; 
 struct snd_kcontrol* FUNC2 (char*,unsigned int*) ; 
 int FUNC3 (struct hda_codec*,int /*<<< orphan*/ ,struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

int FUNC5(struct hda_codec *codec, char *name,
			unsigned int *tlv, const char * const *slaves,
			  const char *suffix, bool init_slave_vol,
			  struct snd_kcontrol **ctl_ret)
{
	struct snd_kcontrol *kctl;
	int err;

	if (ctl_ret)
		*ctl_ret = NULL;

	err = FUNC0(codec, slaves, suffix, check_slave_present, NULL);
	if (err != 1) {
		FUNC4("No slave found for %s\n", name);
		return 0;
	}
	kctl = FUNC2(name, tlv);
	if (!kctl)
		return -ENOMEM;
	err = FUNC3(codec, 0, kctl);
	if (err < 0)
		return err;

	err = FUNC0(codec, slaves, suffix,
			 (map_slave_func_t)snd_ctl_add_slave, kctl);
	if (err < 0)
		return err;

	/* init with master mute & zero volume */
	FUNC1(kctl, 0);
	if (init_slave_vol)
		FUNC0(codec, slaves, suffix,
			   tlv ? init_slave_0dB : init_slave_unmute, kctl);

	if (ctl_ret)
		*ctl_ret = kctl;
	return 0;
}