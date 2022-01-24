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
struct snd_card {int dummy; } ;
struct snd_ac97 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_ac97*,int,unsigned char*,unsigned char*) ; 
 int FUNC1 (struct snd_card*,char*,int,int,int,struct snd_ac97*) ; 
 int FUNC2 (struct snd_card*,char*,int,unsigned char,unsigned char,struct snd_ac97*) ; 
 scalar_t__ FUNC3 (struct snd_ac97*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_ac97*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char const*) ; 

__attribute__((used)) static int FUNC6(struct snd_card *card, const char *pfx,
				    int reg, int check_stereo, int check_amix,
				    struct snd_ac97 *ac97)
{
	int err;
	char name[44];
	unsigned char lo_max, hi_max;

	if (! FUNC4(ac97, reg))
		return 0;

	if (FUNC3(ac97, reg, 15)) {
		FUNC5(name, "%s Switch", pfx);
		if ((err = FUNC1(card, name, reg,
						     check_stereo, check_amix,
						     ac97)) < 0)
			return err;
	}
	FUNC0(ac97, reg, &lo_max, &hi_max);
	if (lo_max) {
		FUNC5(name, "%s Volume", pfx);
		if ((err = FUNC2(card, name, reg, lo_max, hi_max, ac97)) < 0)
			return err;
	}
	return 0;
}