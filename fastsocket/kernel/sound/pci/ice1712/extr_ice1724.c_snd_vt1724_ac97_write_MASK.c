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
 unsigned char VT1724_AC97_WRITE ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned short,int /*<<< orphan*/ ) ; 
 unsigned char FUNC3 (struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_ice1712*,unsigned char) ; 

__attribute__((used)) static void FUNC5(struct snd_ac97 *ac97,
				  unsigned short reg,
				  unsigned short val)
{
	struct snd_ice1712 *ice = ac97->private_data;
	unsigned char old_cmd;

	old_cmd = FUNC3(ice);
	old_cmd &= ~VT1724_AC97_ID_MASK;
	old_cmd |= ac97->num;
	FUNC1(reg, FUNC0(ice, AC97_INDEX));
	FUNC2(val, FUNC0(ice, AC97_DATA));
	FUNC1(old_cmd | VT1724_AC97_WRITE, FUNC0(ice, AC97_CMD));
	FUNC4(ice, VT1724_AC97_WRITE);
}