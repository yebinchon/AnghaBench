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
struct dmabuf {scalar_t__ count; scalar_t__ fragsize; scalar_t__ nextOut; scalar_t__ rawbuf; scalar_t__ dmasize; int /*<<< orphan*/  wait; int /*<<< orphan*/  dma_qcount; scalar_t__ dma_fragsize; int /*<<< orphan*/  total_bytes; int /*<<< orphan*/  dmanr; } ;
struct au1550_state {int /*<<< orphan*/  lock; struct dmabuf dma_dac; } ;

/* Variables and functions */
 int AC97C_TE ; 
 int AC97C_XO ; 
 int AC97C_XU ; 
 int /*<<< orphan*/  PSC_AC97STAT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(int irq, void *dev_id)
{
	struct au1550_state *s = (struct au1550_state *) dev_id;
	struct dmabuf  *db = &s->dma_dac;
	u32	ac97c_stat;

	FUNC4(&s->lock);

	ac97c_stat = FUNC1(PSC_AC97STAT);
	if (ac97c_stat & (AC97C_XU | AC97C_XO | AC97C_TE))
		FUNC3("AC97C status = 0x%08x\n", ac97c_stat);
	db->dma_qcount--;

	if (db->count >= db->fragsize) {
		if (FUNC0(db->dmanr, db->nextOut,
							db->fragsize) == 0) {
			FUNC2("qcount < 2 and no ring room!");
		}
		db->nextOut += db->fragsize;
		if (db->nextOut >= db->rawbuf + db->dmasize)
			db->nextOut -= db->dmasize;
		db->count -= db->fragsize;
		db->total_bytes += db->dma_fragsize;
		db->dma_qcount++;
	}

	/* wake up anybody listening */
	if (FUNC6(&db->wait))
		FUNC7(&db->wait);

	FUNC5(&s->lock);
}