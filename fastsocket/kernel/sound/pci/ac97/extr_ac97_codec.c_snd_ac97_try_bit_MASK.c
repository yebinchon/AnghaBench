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
 unsigned short FUNC0 (struct snd_ac97*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ac97*,int,unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ac97*,int,unsigned short) ; 

__attribute__((used)) static int FUNC3(struct snd_ac97 * ac97, int reg, int bit)
{
	unsigned short mask, val, orig, res;

	mask = 1 << bit;
	orig = FUNC0(ac97, reg);
	val = orig ^ mask;
	FUNC1(ac97, reg, val);
	res = FUNC0(ac97, reg);
	FUNC2(ac97, reg, orig);
	return res == val;
}