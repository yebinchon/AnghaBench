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
struct dmabuf {int stopped; int /*<<< orphan*/  dmanr; } ;
struct au1550_state {int /*<<< orphan*/  lock; struct dmabuf dma_dac; } ;

/* Variables and functions */
 int /*<<< orphan*/  PSC_AC97PCR ; 
 int /*<<< orphan*/  PSC_AC97PCR_TP ; 
 int /*<<< orphan*/  PSC_AC97STAT ; 
 int PSC_AC97STAT_TB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC6(struct au1550_state *s)
{
	struct dmabuf  *db = &s->dma_dac;
	u32		stat;
	unsigned long   flags;

	if (db->stopped)
		return;

	FUNC4(&s->lock, flags);

	FUNC3(PSC_AC97PCR_TP, PSC_AC97PCR);
	FUNC2();

	/* Wait for Transmit Busy to show disabled.
	*/
	do {
		stat = FUNC1(PSC_AC97STAT);
		FUNC2();
	} while ((stat & PSC_AC97STAT_TB) != 0);

	FUNC0(db->dmanr);

	db->stopped = 1;

	FUNC5(&s->lock, flags);
}