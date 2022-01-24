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
typedef  int u32 ;
struct snd_ac97 {int /*<<< orphan*/  num; } ;
struct aaci {int maincr; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ AACI_MAINCR ; 
 scalar_t__ AACI_SL1RX ; 
 scalar_t__ AACI_SL2RX ; 
 scalar_t__ AACI_SLFR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int SLFR_1RXV ; 
 int SLFR_2RXV ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct aaci *aaci, struct snd_ac97 *ac97)
{
	u32 v, maincr = aaci->maincr | FUNC0(ac97->num);

	/*
	 * Ensure that the slot 1/2 RX registers are empty.
	 */
	v = FUNC1(aaci->base + AACI_SLFR);
	if (v & SLFR_2RXV)
		FUNC1(aaci->base + AACI_SL2RX);
	if (v & SLFR_1RXV)
		FUNC1(aaci->base + AACI_SL1RX);

	FUNC2(maincr, aaci->base + AACI_MAINCR);
}