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
struct usb_iso_packet_descriptor {int offset; int length; } ;
struct urb {unsigned char* transfer_buffer; } ;
struct snd_usb_caiaqdev {int n_streams; int* audio_out_buf_pos; int* period_out_count; struct snd_pcm_substream** sub_playback; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {char* dma_area; int /*<<< orphan*/  buffer_size; } ;

/* Variables and functions */
 int BYTES_PER_SAMPLE ; 
 int CHANNELS_PER_STREAM ; 
 int FUNC0 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct snd_usb_caiaqdev *dev,
				struct urb *urb,
				const struct usb_iso_packet_descriptor *iso)
{
	unsigned char *usb_buf = urb->transfer_buffer + iso->offset;
	int stream, i;

	for (i = 0; i < iso->length;) {
		for (stream = 0; stream < dev->n_streams; stream++) {
			struct snd_pcm_substream *sub = dev->sub_playback[stream];
			char *audio_buf = NULL;
			int c, n, sz = 0;

			if (sub) {
				struct snd_pcm_runtime *rt = sub->runtime;
				audio_buf = rt->dma_area;
				sz = FUNC0(rt, rt->buffer_size);
			}

			for (c = 0; c < CHANNELS_PER_STREAM; c++) {
				for (n = 0; n < BYTES_PER_SAMPLE; n++) {
					if (audio_buf) {
						usb_buf[i+n] = audio_buf[dev->audio_out_buf_pos[stream]++];

						if (dev->audio_out_buf_pos[stream] == sz)
							dev->audio_out_buf_pos[stream] = 0;
					} else {
						usb_buf[i+n] = 0;
					}
				}

				if (audio_buf)
					dev->period_out_count[stream] += BYTES_PER_SAMPLE;

				i += BYTES_PER_SAMPLE;

				/* fill in the check byte pattern */
				usb_buf[i++] = (stream << 1) | c;
			}
		}
	}
}