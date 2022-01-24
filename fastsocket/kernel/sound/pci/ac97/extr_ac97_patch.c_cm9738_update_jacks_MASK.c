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
 int /*<<< orphan*/  AC97_CM9738_VENDOR_CTRL ; 
 scalar_t__ FUNC0 (struct snd_ac97*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ac97*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC2(struct snd_ac97 *ac97)
{
	/* shared Line-In / Surround Out */
	FUNC1(ac97, AC97_CM9738_VENDOR_CTRL, 1 << 10,
			     FUNC0(ac97) ? (1 << 10) : 0);
}