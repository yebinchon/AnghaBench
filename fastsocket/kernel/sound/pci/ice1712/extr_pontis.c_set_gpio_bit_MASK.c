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
 unsigned int FUNC0 (struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ice1712*,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct snd_ice1712 *ice, unsigned int bit, int val)
{
	unsigned int tmp = FUNC0(ice);
	if (val)
		tmp |= bit;
	else
		tmp &= ~bit;
	FUNC1(ice, tmp);
}