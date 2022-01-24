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

/* Variables and functions */
 scalar_t__ KS8695_TMCON ; 
 scalar_t__ KS8695_TMR_VA ; 
 unsigned long TMCON_T0EN ; 
 unsigned long FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  ks8695_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC4(void)
{
	unsigned long tmcon;

	FUNC2(&ks8695_lock);
	/* disable timer0 */
	tmcon = FUNC0(KS8695_TMR_VA + KS8695_TMCON);
	FUNC1(tmcon & ~TMCON_T0EN, KS8695_TMR_VA + KS8695_TMCON);
	FUNC3(&ks8695_lock);
}