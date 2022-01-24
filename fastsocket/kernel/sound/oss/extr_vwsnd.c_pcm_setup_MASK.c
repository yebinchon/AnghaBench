#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int sw_samplefmt; int sample_size; unsigned int zero_word; int frame_size; int sw_channels; int hw_fragshift; int sw_fragshift; int sw_subdivshift; int hw_fragsize; int hw_fragcount; int sw_fragcount; int hwbuf_max; void* hwbuf_size; int swbuf_size; int swb_u_avail; int swb_i_avail; int flags; int /*<<< orphan*/  sw_framerate; int /*<<< orphan*/  hwbuf_paddr; int /*<<< orphan*/  chan; void* swstate; int /*<<< orphan*/  MSC_offset; int /*<<< orphan*/  hwstate; scalar_t__ byte_count; scalar_t__ swb_i_idx; scalar_t__ swb_u_idx; int /*<<< orphan*/ * swbuf; } ;
typedef  TYPE_1__ vwsnd_port_t ;
struct TYPE_12__ {int /*<<< orphan*/  lith; } ;
typedef  TYPE_2__ vwsnd_dev_t ;
struct TYPE_13__ {int /*<<< orphan*/  msc; } ;
typedef  TYPE_3__ ustmsc_t ;

/* Variables and functions */
#define  AFMT_A_LAW 132 
#define  AFMT_MU_LAW 131 
#define  AFMT_S16_LE 130 
#define  AFMT_S8 129 
#define  AFMT_U8 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_2__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int DISABLED ; 
 void* DMACHUNK_SIZE ; 
 int ENOMEM ; 
 int ERFLOWN ; 
 int /*<<< orphan*/  HWBUF_SHIFT ; 
 int /*<<< orphan*/  HW_RUNNING ; 
 int FUNC4 (int) ; 
 int MAX_FRAGSIZE ; 
 int FUNC5 (int) ; 
 int MIN_FRAGSIZE ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  READ_INTR_MASK ; 
 void* SW_RUN ; 
 int /*<<< orphan*/  WRITE_INTR_MASK ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  li_comm1 ; 
 int /*<<< orphan*/  li_comm2 ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 void* FUNC13 (int) ; 

__attribute__((used)) static int FUNC14(vwsnd_dev_t *devc,
		     vwsnd_port_t *rport,
		     vwsnd_port_t *wport)
{
	vwsnd_port_t *aport = rport ? rport : wport;
	int sample_size;
	unsigned int zero_word;

	FUNC1("(devc=0x%p, rport=0x%p, wport=0x%p)\n", devc, rport, wport);

	FUNC0(aport != NULL);
	if (aport->swbuf != NULL)
		return 0;
	switch (aport->sw_samplefmt) {
	case AFMT_MU_LAW:
		sample_size = 1;
		zero_word = 0xFFFFFFFF ^ 0x80808080;
		break;

	case AFMT_A_LAW:
		sample_size = 1;
		zero_word = 0xD5D5D5D5 ^ 0x80808080;
		break;

	case AFMT_U8:
		sample_size = 1;
		zero_word = 0x80808080;
		break;

	case AFMT_S8:
		sample_size = 1;
		zero_word = 0x00000000;
		break;

	case AFMT_S16_LE:
		sample_size = 2;
		zero_word = 0x00000000;
		break;

	default:
		sample_size = 0;	/* prevent compiler warning */
		zero_word = 0;
		FUNC0(0);
	}
	aport->sample_size  = sample_size;
	aport->zero_word    = zero_word;
	aport->frame_size   = aport->sw_channels * aport->sample_size;
	aport->hw_fragshift = aport->sw_fragshift - aport->sw_subdivshift;
	aport->hw_fragsize  = 1 << aport->hw_fragshift;
	aport->hw_fragcount = aport->sw_fragcount << aport->sw_subdivshift;
	FUNC0(aport->hw_fragsize >= MIN_FRAGSIZE);
	FUNC0(aport->hw_fragsize <= MAX_FRAGSIZE);
	FUNC0(aport->hw_fragcount >= FUNC5(aport->hw_fragsize));
	FUNC0(aport->hw_fragcount <= FUNC4(aport->hw_fragsize));
	if (rport) {
		int hwfrags, swfrags;
		rport->hwbuf_max = aport->hwbuf_size - DMACHUNK_SIZE;
		hwfrags = rport->hwbuf_max >> aport->hw_fragshift;
		swfrags = aport->hw_fragcount - hwfrags;
		if (swfrags < 2)
			swfrags = 2;
		rport->swbuf_size = swfrags * aport->hw_fragsize;
		FUNC2("hwfrags = %d, swfrags = %d\n", hwfrags, swfrags);
		FUNC2("read hwbuf_max = %d, swbuf_size = %d\n",
		     rport->hwbuf_max, rport->swbuf_size);
	}
	if (wport) {
		int hwfrags, swfrags;
		int total_bytes = aport->hw_fragcount * aport->hw_fragsize;
		wport->hwbuf_max = aport->hwbuf_size - DMACHUNK_SIZE;
		if (wport->hwbuf_max > total_bytes)
			wport->hwbuf_max = total_bytes;
		hwfrags = wport->hwbuf_max >> aport->hw_fragshift;
		FUNC2("hwfrags = %d\n", hwfrags);
		swfrags = aport->hw_fragcount - hwfrags;
		if (swfrags < 2)
			swfrags = 2;
		wport->swbuf_size = swfrags * aport->hw_fragsize;
		FUNC2("hwfrags = %d, swfrags = %d\n", hwfrags, swfrags);
		FUNC2("write hwbuf_max = %d, swbuf_size = %d\n",
		     wport->hwbuf_max, wport->swbuf_size);
	}

	aport->swb_u_idx    = 0;
	aport->swb_i_idx    = 0;
	aport->byte_count   = 0;

	/*
	 * Is this a Cobalt bug?  We need to make this buffer extend
	 * one page further than we actually use -- somehow memcpy
	 * causes an exceptoin otherwise.  I suspect there's a bug in
	 * Cobalt (or somewhere) where it's generating a fault on a
	 * speculative load or something.  Obviously, I haven't taken
	 * the time to track it down.
	 */

	aport->swbuf        = FUNC13(aport->swbuf_size + PAGE_SIZE);
	if (!aport->swbuf)
		return -ENOMEM;
	if (rport && wport) {
		FUNC0(aport == rport);
		FUNC0(wport->swbuf == NULL);
		/* One extra page - see comment above. */
		wport->swbuf = FUNC13(aport->swbuf_size + PAGE_SIZE);
		if (!wport->swbuf) {
			FUNC12(aport->swbuf);
			aport->swbuf = NULL;
			return -ENOMEM;
		}
		wport->sample_size  = rport->sample_size;
		wport->zero_word    = rport->zero_word;
		wport->frame_size   = rport->frame_size;
		wport->hw_fragshift = rport->hw_fragshift;
		wport->hw_fragsize  = rport->hw_fragsize;
		wport->hw_fragcount = rport->hw_fragcount;
		wport->swbuf_size   = rport->swbuf_size;
		wport->hwbuf_max    = rport->hwbuf_max;
		wport->swb_u_idx    = rport->swb_u_idx;
		wport->swb_i_idx    = rport->swb_i_idx;
		wport->byte_count   = rport->byte_count;
	}
	if (rport) {
		rport->swb_u_avail = 0;
		rport->swb_i_avail = rport->swbuf_size;
		rport->swstate = SW_RUN;
		FUNC11(&rport->chan,
			     &li_comm1,
			     &devc->lith,
			     rport->hwbuf_paddr,
			     HWBUF_SHIFT,
			     rport->hw_fragshift,
			     rport->sw_channels,
			     rport->sample_size);
		FUNC6(&devc->lith,
				 rport->sw_framerate,
				 rport->sw_samplefmt,
				 rport->sw_channels);
		FUNC9(&devc->lith, READ_INTR_MASK);
		if (!(rport->flags & DISABLED)) {
			ustmsc_t ustmsc;
			rport->hwstate = HW_RUNNING;
			FUNC8(&rport->chan);
			FUNC10(&rport->chan, &ustmsc);
			rport->MSC_offset = ustmsc.msc;
		}
	}
	if (wport) {
		if (wport->hwbuf_max > wport->swbuf_size)
			wport->hwbuf_max = wport->swbuf_size;
		wport->flags &= ~ERFLOWN;
		wport->swb_u_avail = wport->swbuf_size;
		wport->swb_i_avail = 0;
		wport->swstate = SW_RUN;
		FUNC11(&wport->chan,
			     &li_comm2,
			     &devc->lith,
			     wport->hwbuf_paddr,
			     HWBUF_SHIFT,
			     wport->hw_fragshift,
			     wport->sw_channels,
			     wport->sample_size);
		FUNC7(&devc->lith,
				 wport->sw_framerate,
				 wport->sw_samplefmt,
				 wport->sw_channels);
		FUNC9(&devc->lith, WRITE_INTR_MASK);
	}
	FUNC3();
	return 0;
}