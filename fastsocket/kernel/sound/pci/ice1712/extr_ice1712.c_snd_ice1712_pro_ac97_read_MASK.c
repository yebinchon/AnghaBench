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
struct snd_ac97 {struct snd_ice1712* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_CMD ; 
 int /*<<< orphan*/  AC97_DATA ; 
 int /*<<< orphan*/  AC97_INDEX ; 
 unsigned char ICE1712_AC97_READ ; 
 unsigned char ICE1712_AC97_READY ; 
 unsigned char ICE1712_AC97_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned short FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned short FUNC4(struct snd_ac97 *ac97,
						unsigned short reg)
{
	struct snd_ice1712 *ice = ac97->private_data;
	int tm;
	unsigned char old_cmd = 0;

	for (tm = 0; tm < 0x10000; tm++) {
		old_cmd = FUNC1(FUNC0(ice, AC97_CMD));
		if (old_cmd & (ICE1712_AC97_WRITE | ICE1712_AC97_READ))
			continue;
		if (!(old_cmd & ICE1712_AC97_READY))
			continue;
		break;
	}
	FUNC3(reg, FUNC0(ice, AC97_INDEX));
	FUNC3(old_cmd | ICE1712_AC97_READ, FUNC0(ice, AC97_CMD));
	for (tm = 0; tm < 0x10000; tm++)
		if ((FUNC1(FUNC0(ice, AC97_CMD)) & ICE1712_AC97_READ) == 0)
			break;
	if (tm >= 0x10000)		/* timeout */
		return ~0;
	return FUNC2(FUNC0(ice, AC97_DATA));
}