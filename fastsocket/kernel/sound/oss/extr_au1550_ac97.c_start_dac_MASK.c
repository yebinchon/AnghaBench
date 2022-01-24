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
struct dmabuf {scalar_t__ stopped; int /*<<< orphan*/  dmanr; int /*<<< orphan*/  num_channels; } ;
struct au1550_state {struct dmabuf dma_dac; } ;

/* Variables and functions */
 int /*<<< orphan*/  PSC_AC97PCR ; 
 int /*<<< orphan*/  PSC_AC97PCR_TC ; 
 int /*<<< orphan*/  PSC_AC97PCR_TS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct au1550_state *s)
{
	struct dmabuf  *db = &s->dma_dac;

	if (!db->stopped)
		return;

	FUNC3(db->num_channels);
	FUNC2(PSC_AC97PCR_TC, PSC_AC97PCR);
	FUNC1();
	FUNC2(PSC_AC97PCR_TS, PSC_AC97PCR);
	FUNC1();

	FUNC0(db->dmanr);

	db->stopped = 0;
}