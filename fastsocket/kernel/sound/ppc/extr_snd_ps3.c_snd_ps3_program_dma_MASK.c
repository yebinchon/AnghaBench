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
typedef  int uint32_t ;
struct snd_ps3_card_info {int null_buffer_start_dma_addr; int /*<<< orphan*/  dma_lock; void** dma_next_transfer_vaddr; } ;
typedef  enum snd_ps3_dma_filltype { ____Placeholder_snd_ps3_dma_filltype } snd_ps3_dma_filltype ;
typedef  enum snd_ps3_ch { ____Placeholder_snd_ps3_ch } snd_ps3_ch ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int PS3_AUDIO_DEST_TARGET_AUDIOFIFO ; 
 int /*<<< orphan*/  PS3_AUDIO_DMAC_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int PS3_AUDIO_KICK_EVENT_ALWAYS ; 
 int FUNC5 (int) ; 
 int PS3_AUDIO_KICK_EVENT_SERIALOUT0_EMPTY ; 
 int PS3_AUDIO_KICK_REQUEST ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int PS3_AUDIO_SOURCE_TARGET_SYSTEM_MEMORY ; 
#define  SND_PS3_DMA_FILLTYPE_FIRSTFILL 131 
#define  SND_PS3_DMA_FILLTYPE_RUNNING 130 
#define  SND_PS3_DMA_FILLTYPE_SILENT_FIRSTFILL 129 
#define  SND_PS3_DMA_FILLTYPE_SILENT_RUNNING 128 
 int /*<<< orphan*/  FUNC7 (struct snd_ps3_card_info*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_ps3_card_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC11 (struct snd_ps3_card_info*,void*,int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC14(struct snd_ps3_card_info *card,
			       enum snd_ps3_dma_filltype filltype)
{
	/* this dmac does not support over 4G */
	uint32_t dma_addr;
	int fill_stages, dma_ch, stage;
	enum snd_ps3_ch ch;
	uint32_t ch0_kick_event = 0; /* initialize to mute gcc */
	void *start_vaddr;
	unsigned long irqsave;
	int silent = 0;

	switch (filltype) {
	case SND_PS3_DMA_FILLTYPE_SILENT_FIRSTFILL:
		silent = 1;
		/* intentionally fall thru */
	case SND_PS3_DMA_FILLTYPE_FIRSTFILL:
		ch0_kick_event = PS3_AUDIO_KICK_EVENT_ALWAYS;
		break;

	case SND_PS3_DMA_FILLTYPE_SILENT_RUNNING:
		silent = 1;
		/* intentionally fall thru */
	case SND_PS3_DMA_FILLTYPE_RUNNING:
		ch0_kick_event = PS3_AUDIO_KICK_EVENT_SERIALOUT0_EMPTY;
		break;
	}

	FUNC8(card, 700, 0);
	fill_stages = 4;
	FUNC9(&card->dma_lock, irqsave);
	for (ch = 0; ch < 2; ch++) {
		start_vaddr = card->dma_next_transfer_vaddr[0];
		for (stage = 0; stage < fill_stages; stage++) {
			dma_ch = stage * 2 + ch;
			if (silent)
				dma_addr = card->null_buffer_start_dma_addr;
			else
				dma_addr =
				FUNC11(card,
					 card->dma_next_transfer_vaddr[ch],
					 ch);

			FUNC13(FUNC6(dma_ch),
				  (PS3_AUDIO_SOURCE_TARGET_SYSTEM_MEMORY |
				   dma_addr));

			/* dst: fixed to 3wire#0 */
			if (ch == 0)
				FUNC13(FUNC2(dma_ch),
					  (PS3_AUDIO_DEST_TARGET_AUDIOFIFO |
					   FUNC0(0)));
			else
				FUNC13(FUNC2(dma_ch),
					  (PS3_AUDIO_DEST_TARGET_AUDIOFIFO |
					   FUNC1(0)));

			/* count always 1 DMA block (1/2 stage = 128 bytes) */
			FUNC13(FUNC3(dma_ch), 0);
			/* bump pointer if needed */
			if (!silent)
				FUNC7(card, ch,
						    PS3_AUDIO_DMAC_BLOCK_SIZE,
						    stage);

			/* kick event  */
			if (dma_ch == 0)
				FUNC13(FUNC4(dma_ch),
					  ch0_kick_event);
			else
				FUNC13(FUNC4(dma_ch),
					  FUNC5(dma_ch
									 - 1) |
					  PS3_AUDIO_KICK_REQUEST);
		}
	}
	/* ensure the hardware sees the change */
	FUNC12();
	FUNC10(&card->dma_lock, irqsave);

	return 0;
}