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
struct snd_ice1712 {int dummy; } ;
struct snd_ac97 {unsigned char num; struct snd_ice1712* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_CMD ; 
 int /*<<< orphan*/  AC97_DATA ; 
 int /*<<< orphan*/  AC97_INDEX ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 unsigned char VT1724_AC97_ID_MASK ; 
 unsigned char VT1724_AC97_READ ; 
 unsigned short FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,int /*<<< orphan*/ ) ; 
 unsigned char FUNC3 (struct snd_ice1712*) ; 
 scalar_t__ FUNC4 (struct snd_ice1712*,unsigned char) ; 

__attribute__((used)) static unsigned short FUNC5(struct snd_ac97 *ac97, unsigned short reg)
{
	struct snd_ice1712 *ice = ac97->private_data;
	unsigned char old_cmd;

	old_cmd = FUNC3(ice);
	old_cmd &= ~VT1724_AC97_ID_MASK;
	old_cmd |= ac97->num;
	FUNC2(reg, FUNC0(ice, AC97_INDEX));
	FUNC2(old_cmd | VT1724_AC97_READ, FUNC0(ice, AC97_CMD));
	if (FUNC4(ice, VT1724_AC97_READ) < 0)
		return ~0;
	return FUNC1(FUNC0(ice, AC97_DATA));
}