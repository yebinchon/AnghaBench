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
struct snd_ac97 {int /*<<< orphan*/  reg_mutex; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct snd_ac97*,unsigned short,unsigned short,unsigned short) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ac97*,unsigned short) ; 

int FUNC4(struct snd_ac97 *ac97, unsigned short reg, unsigned short mask, unsigned short value)
{
	int change;

	if (!FUNC3(ac97, reg))
		return -EINVAL;
	FUNC0(&ac97->reg_mutex);
	change = FUNC2(ac97, reg, mask, value);
	FUNC1(&ac97->reg_mutex);
	return change;
}