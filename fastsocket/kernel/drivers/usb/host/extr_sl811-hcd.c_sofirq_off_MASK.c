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
struct sl811 {int irq_enable; } ;

/* Variables and functions */
 int SL11H_INTMASK_SOFINTR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static inline void FUNC1(struct sl811 *sl811)
{
	if (!(sl811->irq_enable & SL11H_INTMASK_SOFINTR))
		return;
	FUNC0("sof irq off\n");
	sl811->irq_enable &= ~SL11H_INTMASK_SOFINTR;
}