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
struct sh_mobile_lcdc_priv {struct sh_mobile_lcdc_chan* ch; } ;
struct sh_mobile_lcdc_chan {int frame_end; scalar_t__ new_pan_offset; scalar_t__ pan_offset; struct sh_mobile_lcdc_priv* lcdc; scalar_t__ dma_handle; int /*<<< orphan*/  frame_end_wait; int /*<<< orphan*/  enabled; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int FUNC0 (struct sh_mobile_lcdc_chan*) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned long LDINTR_FS ; 
 int LDINTR_VEE ; 
 unsigned long LDINTR_VES ; 
 unsigned long LDRCNTR_MRS ; 
 unsigned long LDRCNTR_SRS ; 
 int /*<<< orphan*/  LDSA1R ; 
 int /*<<< orphan*/  _LDINTR ; 
 int /*<<< orphan*/  _LDRCNTR ; 
 int /*<<< orphan*/  _LDSR ; 
 int FUNC1 (struct sh_mobile_lcdc_chan*) ; 
 int FUNC2 (struct sh_mobile_lcdc_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sh_mobile_lcdc_priv*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct sh_mobile_lcdc_chan*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct sh_mobile_lcdc_priv*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *data)
{
	struct sh_mobile_lcdc_priv *priv = data;
	struct sh_mobile_lcdc_chan *ch;
	unsigned long tmp;
	unsigned long ldintr;
	int is_sub;
	int k;

	/* acknowledge interrupt */
	ldintr = tmp = FUNC2(priv, _LDINTR);
	/*
	 * disable further VSYNC End IRQs, preserve all other enabled IRQs,
	 * write 0 to bits 0-6 to ack all triggered IRQs.
	 */
	tmp &= 0xffffff00 & ~LDINTR_VEE;
	FUNC3(priv, _LDINTR, tmp);

	/* figure out if this interrupt is for main or sub lcd */
	is_sub = (FUNC2(priv, _LDSR) & (1 << 10)) ? 1 : 0;

	/* wake up channel and disable clocks */
	for (k = 0; k < FUNC0(priv->ch); k++) {
		ch = &priv->ch[k];

		if (!ch->enabled)
			continue;

		/* Frame Start */
		if (ldintr & LDINTR_FS) {
			if (is_sub == FUNC1(ch)) {
				ch->frame_end = 1;
				FUNC6(&ch->frame_end_wait);

				FUNC5(priv);
			}
		}

		/* VSYNC End */
		if (ldintr & LDINTR_VES) {
			unsigned long ldrcntr = FUNC2(priv, _LDRCNTR);
			/* Set the source address for the next refresh */
			FUNC4(ch, LDSA1R, ch->dma_handle +
					       ch->new_pan_offset);
			if (FUNC1(ch))
				FUNC3(ch->lcdc, _LDRCNTR,
					   ldrcntr ^ LDRCNTR_SRS);
			else
				FUNC3(ch->lcdc, _LDRCNTR,
					   ldrcntr ^ LDRCNTR_MRS);
			ch->pan_offset = ch->new_pan_offset;
		}
	}

	return IRQ_HANDLED;
}