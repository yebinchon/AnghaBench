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
struct snd_opl4 {int /*<<< orphan*/  reg_lock; TYPE_1__* voices; } ;
struct TYPE_2__ {int reg_misc; } ;

/* Variables and functions */
 int OPL4_KEY_ON_BIT ; 
 int OPL4_MAX_VOICES ; 
 scalar_t__ OPL4_REG_MISC ; 
 int /*<<< orphan*/  FUNC0 (struct snd_opl4*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct snd_opl4 *opl4)
{
	unsigned long flags;
	int i;

	FUNC1(&opl4->reg_lock, flags);
	for (i = 0; i < OPL4_MAX_VOICES; i++)
		FUNC0(opl4, OPL4_REG_MISC + i,
			       opl4->voices[i].reg_misc & ~OPL4_KEY_ON_BIT);
	FUNC2(&opl4->reg_lock, flags);
}