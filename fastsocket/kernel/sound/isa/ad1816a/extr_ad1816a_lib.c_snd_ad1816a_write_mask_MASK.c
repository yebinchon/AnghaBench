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
struct snd_ad1816a {int dummy; } ;

/* Variables and functions */
 unsigned short FUNC0 (struct snd_ad1816a*,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ad1816a*,unsigned char,unsigned short) ; 

__attribute__((used)) static void FUNC2(struct snd_ad1816a *chip, unsigned char reg,
				   unsigned short mask, unsigned short value)
{
	FUNC1(chip, reg,
		(value & mask) | (FUNC0(chip, reg) & ~mask));
}