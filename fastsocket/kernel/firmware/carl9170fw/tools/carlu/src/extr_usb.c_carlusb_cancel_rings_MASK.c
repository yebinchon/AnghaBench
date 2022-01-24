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
struct carlu {int /*<<< orphan*/  rx_interrupt; int /*<<< orphan*/ * rx_ring; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct carlu *ar)
{
	unsigned int i;

	for (i = 0; i < FUNC0(ar->rx_ring); i++)
		FUNC1(ar->rx_ring[i]);

	FUNC1(ar->rx_interrupt);
}