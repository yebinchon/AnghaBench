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
struct snd_pmac {int dummy; } ;

/* Variables and functions */
 int BURGUNDY_VOLUME_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pmac*,unsigned int,int) ; 

__attribute__((used)) static void
FUNC1(struct snd_pmac *chip, unsigned int address,
				  long *volume, int off)
{
	int lvolume, rvolume;

	off |= off << 2;
	lvolume = volume[0] ? volume[0] + BURGUNDY_VOLUME_OFFSET : 0;
	rvolume = volume[1] ? volume[1] + BURGUNDY_VOLUME_OFFSET : 0;

	FUNC0(chip, address + off, lvolume);
	FUNC0(chip, address + off + 0x500, rvolume);
}