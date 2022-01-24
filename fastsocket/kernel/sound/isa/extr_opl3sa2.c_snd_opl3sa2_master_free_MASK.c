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
struct snd_opl3sa2 {int /*<<< orphan*/ * master_volume; int /*<<< orphan*/ * master_switch; } ;
struct snd_kcontrol {int dummy; } ;

/* Variables and functions */
 struct snd_opl3sa2* FUNC0 (struct snd_kcontrol*) ; 

__attribute__((used)) static void FUNC1(struct snd_kcontrol *kcontrol)
{
	struct snd_opl3sa2 *chip = FUNC0(kcontrol);
	chip->master_switch = NULL;
	chip->master_volume = NULL;
}