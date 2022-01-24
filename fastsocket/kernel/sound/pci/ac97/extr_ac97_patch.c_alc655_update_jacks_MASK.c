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
 int /*<<< orphan*/  AC97_ALC650_CLOCK ; 
 int /*<<< orphan*/  AC97_ALC650_MULTICH ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ac97*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_ac97*) ; 
 int FUNC2 (struct snd_ac97*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ac97*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC4(struct snd_ac97 *ac97)
{
	int shared;
	
	/* shared Line-In / Surround Out */
	shared = FUNC2(ac97);
	FUNC0(ac97, AC97_ALC650_MULTICH, 1 << 9,
			      shared ? (1 << 9) : 0, 0);
	/* update shared Mic In / Center/LFE Out */
	shared = FUNC1(ac97);
	/* misc control; vrefout disable */
	FUNC3(ac97, AC97_ALC650_CLOCK, 1 << 12,
			     shared ? (1 << 12) : 0);
	FUNC0(ac97, AC97_ALC650_MULTICH, 1 << 10,
			      shared ? (1 << 10) : 0, 0);
}