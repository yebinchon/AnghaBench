#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {size_t dev_flags; } ;
struct snd_ac97 {TYPE_1__ spec; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_CM9761_MULTI_CHAN ; 
 size_t FUNC0 (struct snd_ac97*) ; 
 size_t FUNC1 (struct snd_ac97*) ; 
 size_t FUNC2 (struct snd_ac97*) ; 
 size_t FUNC3 (struct snd_ac97*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_ac97*,int /*<<< orphan*/ ,int,unsigned short) ; 

__attribute__((used)) static void FUNC5(struct snd_ac97 *ac97)
{
	/* FIXME: check the bits for each model
	 *        model 83 is confirmed to work
	 */
	static unsigned short surr_on[3][2] = {
		{ 0x0008, 0x0000 }, /* 9761-78 & 82 */
		{ 0x0000, 0x0008 }, /* 9761-82 rev.B */
		{ 0x0000, 0x0008 }, /* 9761-83 */
	};
	static unsigned short clfe_on[3][2] = {
		{ 0x0000, 0x1000 }, /* 9761-78 & 82 */
		{ 0x1000, 0x0000 }, /* 9761-82 rev.B */
		{ 0x0000, 0x1000 }, /* 9761-83 */
	};
	static unsigned short surr_shared[3][2] = {
		{ 0x0000, 0x0400 }, /* 9761-78 & 82 */
		{ 0x0000, 0x0400 }, /* 9761-82 rev.B */
		{ 0x0000, 0x0400 }, /* 9761-83 */
	};
	static unsigned short clfe_shared[3][2] = {
		{ 0x2000, 0x0880 }, /* 9761-78 & 82 */
		{ 0x0000, 0x2880 }, /* 9761-82 rev.B */
		{ 0x2000, 0x0800 }, /* 9761-83 */
	};
	unsigned short val = 0;

	val |= surr_on[ac97->spec.dev_flags][FUNC3(ac97)];
	val |= clfe_on[ac97->spec.dev_flags][FUNC0(ac97)];
	val |= surr_shared[ac97->spec.dev_flags][FUNC2(ac97)];
	val |= clfe_shared[ac97->spec.dev_flags][FUNC1(ac97)];

	FUNC4(ac97, AC97_CM9761_MULTI_CHAN, 0x3c88, val);
}