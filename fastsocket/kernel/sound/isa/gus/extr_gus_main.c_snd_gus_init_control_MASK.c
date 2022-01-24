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
struct snd_gus_card {int /*<<< orphan*/  card; int /*<<< orphan*/  ace_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct snd_gus_card*) ; 
 int /*<<< orphan*/  snd_gus_joystick_control ; 

__attribute__((used)) static void FUNC2(struct snd_gus_card *gus)
{
	if (!gus->ace_flag)
		FUNC0(gus->card, FUNC1(&snd_gus_joystick_control, gus));
}