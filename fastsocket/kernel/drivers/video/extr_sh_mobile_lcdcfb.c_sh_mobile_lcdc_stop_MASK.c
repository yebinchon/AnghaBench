#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sh_mobile_lcdc_priv {struct sh_mobile_lcdc_chan* ch; scalar_t__ started; } ;
struct sh_mobile_lcdc_board_cfg {int /*<<< orphan*/  board_data; int /*<<< orphan*/  (* display_off ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_3__ {struct sh_mobile_lcdc_board_cfg board_cfg; } ;
struct sh_mobile_lcdc_chan {scalar_t__ enabled; TYPE_1__ cfg; TYPE_2__* info; scalar_t__ frame_end; int /*<<< orphan*/  frame_end_wait; } ;
struct TYPE_4__ {int /*<<< orphan*/ * fbdefio; int /*<<< orphan*/  deferred_work; } ;

/* Variables and functions */
 int FUNC0 (struct sh_mobile_lcdc_chan*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sh_mobile_lcdc_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct sh_mobile_lcdc_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct sh_mobile_lcdc_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct sh_mobile_lcdc_priv *priv)
{
	struct sh_mobile_lcdc_chan *ch;
	struct sh_mobile_lcdc_board_cfg	*board_cfg;
	int k;

	/* clean up deferred io and ask board code to disable panel */
	for (k = 0; k < FUNC0(priv->ch); k++) {
		ch = &priv->ch[k];
		if (!ch->enabled)
			continue;

		/* deferred io mode:
		 * flush frame, and wait for frame end interrupt
		 * clean up deferred io and enable clock
		 */
		if (ch->info->fbdefio) {
			ch->frame_end = 0;
			FUNC2(&ch->info->deferred_work, 0);
			FUNC7(ch->frame_end_wait, ch->frame_end);
			FUNC1(ch->info);
			ch->info->fbdefio = NULL;
			FUNC4(priv);
		}

		board_cfg = &ch->cfg.board_cfg;
		if (board_cfg->display_off)
			board_cfg->display_off(board_cfg->board_data);
	}

	/* stop the lcdc */
	if (priv->started) {
		FUNC5(priv, 0);
		priv->started = 0;
	}

	/* stop clocks */
	for (k = 0; k < FUNC0(priv->ch); k++)
		if (priv->ch[k].enabled)
			FUNC3(priv);
}