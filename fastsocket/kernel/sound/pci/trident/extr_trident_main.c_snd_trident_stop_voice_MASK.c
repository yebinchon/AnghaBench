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
struct snd_trident {int dummy; } ;

/* Variables and functions */
 unsigned int T4D_STOP_A ; 
 unsigned int T4D_STOP_B ; 
 int /*<<< orphan*/  FUNC0 (struct snd_trident*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 

void FUNC2(struct snd_trident * trident, unsigned int voice)
{
	unsigned int mask = 1 << (voice & 0x1f);
	unsigned int reg = (voice & 0x20) ? T4D_STOP_B : T4D_STOP_A;

	FUNC1(mask, FUNC0(trident, reg));
}