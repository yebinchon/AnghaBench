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
struct snd_kcontrol {int dummy; } ;
struct snd_ac97 {TYPE_1__* bus; } ;
struct TYPE_2__ {int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct snd_kcontrol* FUNC0 (struct snd_ac97*,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct snd_kcontrol*) ; 
 int FUNC2 (struct snd_kcontrol*,struct snd_kcontrol*) ; 
 struct snd_kcontrol* FUNC3 (char*,unsigned int const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 

__attribute__((used)) static int FUNC5(struct snd_ac97 *ac97, char *name,
				const unsigned int *tlv, const char **slaves)
{
	struct snd_kcontrol *kctl;
	const char **s;
	int err;

	kctl = FUNC3(name, tlv);
	if (!kctl)
		return -ENOMEM;
	err = FUNC1(ac97->bus->card, kctl);
	if (err < 0)
		return err;

	for (s = slaves; *s; s++) {
		struct snd_kcontrol *sctl;

		sctl = FUNC0(ac97, *s);
		if (!sctl) {
			FUNC4("Cannot find slave %s, skipped\n", *s);
			continue;
		}
		err = FUNC2(kctl, sctl);
		if (err < 0)
			return err;
	}
	return 0;
}