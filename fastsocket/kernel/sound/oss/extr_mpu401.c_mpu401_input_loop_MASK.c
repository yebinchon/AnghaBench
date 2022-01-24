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
struct mpu_config {int m_busy; scalar_t__ mode; int opened; int /*<<< orphan*/  devno; int /*<<< orphan*/  (* inputintr ) (int /*<<< orphan*/ ,unsigned char) ;int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ MODE_SYNTH ; 
 int OPEN_READ ; 
 scalar_t__ FUNC0 (struct mpu_config*) ; 
 int /*<<< orphan*/  FUNC1 (struct mpu_config*,unsigned char) ; 
 unsigned char FUNC2 (struct mpu_config*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned char) ; 

__attribute__((used)) static void FUNC6(struct mpu_config *devc)
{
	unsigned long flags;
	int busy;
	int n;

	FUNC3(&devc->lock,flags);
	busy = devc->m_busy;
	devc->m_busy = 1;
	FUNC4(&devc->lock,flags);

	if (busy)		/* Already inside the scanner */
		return;

	n = 50;

	while (FUNC0(devc) && n-- > 0)
	{
		unsigned char c = FUNC2(devc);

		if (devc->mode == MODE_SYNTH)
		{
			FUNC1(devc, c);
		}
		else if (devc->opened & OPEN_READ && devc->inputintr != NULL)
			devc->inputintr(devc->devno, c);
	}
	devc->m_busy = 0;
}