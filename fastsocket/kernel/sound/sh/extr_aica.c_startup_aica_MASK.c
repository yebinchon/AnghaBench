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
struct snd_card_aica {int /*<<< orphan*/  channel; } ;
struct aica_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AICA_CHANNEL0_CONTROL_OFFSET ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct snd_card_aica *dreamcastcard)
{
	FUNC1(AICA_CHANNEL0_CONTROL_OFFSET,
		    dreamcastcard->channel, sizeof(struct aica_channel));
	FUNC0();
}