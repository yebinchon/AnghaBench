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
struct snd_ac97 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ad1981_jacks_blacklist ; 
 scalar_t__ FUNC1 (struct snd_ac97*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_ac97*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  snd_ac97_ad1981x_jack_sense ; 

__attribute__((used)) static int FUNC3(struct snd_ac97 * ac97)
{
	if (FUNC1(ac97, ad1981_jacks_blacklist))
		return 0;
	return FUNC2(ac97, snd_ac97_ad1981x_jack_sense,
				    FUNC0(snd_ac97_ad1981x_jack_sense));
}