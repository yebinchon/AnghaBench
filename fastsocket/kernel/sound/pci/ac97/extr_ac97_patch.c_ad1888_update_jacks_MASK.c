#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  lo_as_master; } ;
struct TYPE_4__ {TYPE_1__ ad18xx; } ;
struct snd_ac97 {TYPE_2__ spec; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_AD_MISC ; 
 scalar_t__ FUNC0 (struct snd_ac97*) ; 
 scalar_t__ FUNC1 (struct snd_ac97*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ac97*,int /*<<< orphan*/ ,int,unsigned short) ; 

__attribute__((used)) static void FUNC3(struct snd_ac97 *ac97)
{
	unsigned short val = 0;
	/* clear LODIS if shared jack is to be used for Surround out */
	if (!ac97->spec.ad18xx.lo_as_master && FUNC0(ac97))
		val |= (1 << 12);
	/* clear CLDIS if shared jack is to be used for C/LFE out */
	if (FUNC1(ac97))
		val |= (1 << 11);
	/* shared Line-In */
	FUNC2(ac97, AC97_AD_MISC, (1 << 11) | (1 << 12), val);
}