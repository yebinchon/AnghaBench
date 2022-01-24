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
struct snd_usb_endpoint {int datainterval; int stride; int silence_value; int maxpacksize; unsigned int freqmax; int freqn; unsigned int curpacksize; unsigned int syncinterval; unsigned int nurbs; int /*<<< orphan*/  pipe; TYPE_1__* chip; struct snd_urb_ctx* urb; scalar_t__ fill_max; } ;
struct snd_urb_ctx {unsigned int index; unsigned int packets; unsigned int buffer_size; int /*<<< orphan*/  ready_list; TYPE_2__* urb; struct snd_usb_endpoint* ep; } ;
struct audioformat {int datainterval; scalar_t__ fmt_type; } ;
typedef  scalar_t__ snd_pcm_format_t ;
struct TYPE_4__ {int transfer_flags; int interval; int /*<<< orphan*/  complete; struct snd_urb_ctx* context; int /*<<< orphan*/  pipe; int /*<<< orphan*/  transfer_buffer; int /*<<< orphan*/  transfer_dma; } ;
struct TYPE_3__ {unsigned int nrpacks; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ MAX_PACKS ; 
 unsigned int MAX_QUEUE ; 
 unsigned int MAX_URBS ; 
 scalar_t__ SNDRV_PCM_FORMAT_U8 ; 
 scalar_t__ UAC_FORMAT_TYPE_II ; 
 int URB_ISO_ASAP ; 
 int URB_NO_TRANSFER_DMA_MAP ; 
 scalar_t__ USB_SPEED_FULL ; 
 unsigned int FUNC1 (unsigned int,unsigned int) ; 
 unsigned int FUNC2 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_usb_endpoint*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  snd_complete_urb ; 
 unsigned int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_usb_endpoint*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct snd_usb_endpoint *ep,
			      snd_pcm_format_t pcm_format,
			      unsigned int channels,
			      unsigned int period_bytes,
			      struct audioformat *fmt,
			      struct snd_usb_endpoint *sync_ep)
{
	unsigned int maxsize, i, urb_packs, total_packs, packs_per_ms;
	int is_playback = FUNC9(ep->pipe);
	int frame_bits = FUNC4(pcm_format) * channels;

	ep->datainterval = fmt->datainterval;
	ep->stride = frame_bits >> 3;
	ep->silence_value = pcm_format == SNDRV_PCM_FORMAT_U8 ? 0x80 : 0;

	/* calculate max. frequency */
	if (ep->maxpacksize) {
		/* whatever fits into a max. size packet */
		maxsize = ep->maxpacksize;
		ep->freqmax = (maxsize / (frame_bits >> 3))
				<< (16 - ep->datainterval);
	} else {
		/* no max. packet size: just take 25% higher than nominal */
		ep->freqmax = ep->freqn + (ep->freqn >> 2);
		maxsize = ((ep->freqmax + 0xffff) * (frame_bits >> 3))
				>> (16 - ep->datainterval);
	}

	if (ep->fill_max)
		ep->curpacksize = ep->maxpacksize;
	else
		ep->curpacksize = maxsize;

	if (FUNC6(ep->chip->dev) != USB_SPEED_FULL)
		packs_per_ms = 8 >> ep->datainterval;
	else
		packs_per_ms = 1;

	if (is_playback && !FUNC5(ep)) {
		urb_packs = FUNC1(ep->chip->nrpacks, 1);
		urb_packs = FUNC2(urb_packs, (unsigned int) MAX_PACKS);
	} else {
		urb_packs = 1;
	}

	urb_packs *= packs_per_ms;

	if (sync_ep && !FUNC5(ep))
		urb_packs = FUNC2(urb_packs, 1U << sync_ep->syncinterval);

	/* decide how many packets to be used */
	if (is_playback && !FUNC5(ep)) {
		unsigned int minsize, maxpacks;
		/* determine how small a packet can be */
		minsize = (ep->freqn >> (16 - ep->datainterval))
			  * (frame_bits >> 3);
		/* with sync from device, assume it can be 12% lower */
		if (sync_ep)
			minsize -= minsize >> 3;
		minsize = FUNC1(minsize, 1u);
		total_packs = (period_bytes + minsize - 1) / minsize;
		/* we need at least two URBs for queueing */
		if (total_packs < 2) {
			total_packs = 2;
		} else {
			/* and we don't want too long a queue either */
			maxpacks = FUNC1(MAX_QUEUE * packs_per_ms, urb_packs * 2);
			total_packs = FUNC2(total_packs, maxpacks);
		}
	} else {
		while (urb_packs > 1 && urb_packs * maxsize >= period_bytes)
			urb_packs >>= 1;
		total_packs = MAX_URBS * urb_packs;
	}

	ep->nurbs = (total_packs + urb_packs - 1) / urb_packs;
	if (ep->nurbs > MAX_URBS) {
		/* too much... */
		ep->nurbs = MAX_URBS;
		total_packs = MAX_URBS * urb_packs;
	} else if (ep->nurbs < 2) {
		/* too little - we need at least two packets
		 * to ensure contiguous playback/capture
		 */
		ep->nurbs = 2;
	}

	/* allocate and initialize data urbs */
	for (i = 0; i < ep->nurbs; i++) {
		struct snd_urb_ctx *u = &ep->urb[i];
		u->index = i;
		u->ep = ep;
		u->packets = (i + 1) * total_packs / ep->nurbs
			- i * total_packs / ep->nurbs;
		u->buffer_size = maxsize * u->packets;

		if (fmt->fmt_type == UAC_FORMAT_TYPE_II)
			u->packets++; /* for transfer delimiter */
		u->urb = FUNC7(u->packets, GFP_KERNEL);
		if (!u->urb)
			goto out_of_memory;

		u->urb->transfer_buffer =
			FUNC8(ep->chip->dev, u->buffer_size,
					   GFP_KERNEL, &u->urb->transfer_dma);
		if (!u->urb->transfer_buffer)
			goto out_of_memory;
		u->urb->pipe = ep->pipe;
		u->urb->transfer_flags = URB_ISO_ASAP | URB_NO_TRANSFER_DMA_MAP;
		u->urb->interval = 1 << ep->datainterval;
		u->urb->context = u;
		u->urb->complete = snd_complete_urb;
		FUNC0(&u->ready_list);
	}

	return 0;

out_of_memory:
	FUNC3(ep, 0);
	return -ENOMEM;
}