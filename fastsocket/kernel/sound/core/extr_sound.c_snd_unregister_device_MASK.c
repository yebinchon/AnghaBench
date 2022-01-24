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

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,struct snd_card*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  major ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** snd_minors ; 
 int /*<<< orphan*/  sound_class ; 
 int /*<<< orphan*/  sound_mutex ; 

int FUNC6(int type, struct snd_card *card, int dev)
{
	int minor;

	FUNC4(&sound_mutex);
	minor = FUNC2(type, card, dev);
	if (minor < 0) {
		FUNC5(&sound_mutex);
		return -EINVAL;
	}

	FUNC1(sound_class, FUNC0(major, minor));

	FUNC3(snd_minors[minor]);
	snd_minors[minor] = NULL;
	FUNC5(&sound_mutex);
	return 0;
}