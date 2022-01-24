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

/* Variables and functions */
 unsigned char FUNC0 (struct snd_ice1712*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ice1712*,int,unsigned char) ; 

__attribute__((used)) static int FUNC2(struct snd_ice1712 *ice, int idx,
		unsigned char mute)
{
	unsigned char new, old;
	int change;
	old = FUNC0(ice, idx);
	new = (~mute << 7 & 0x80) | (old & ~0x80);
	change = (new != old);
	if (change)
		/*printk ("Volume register 0x%02x: 0x%02x\n", idx, new);*/
		FUNC1(ice, idx, new);
	return change;
}