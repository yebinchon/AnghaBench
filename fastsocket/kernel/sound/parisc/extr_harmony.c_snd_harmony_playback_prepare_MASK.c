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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int channels; int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  format; int /*<<< orphan*/  rate; } ;
struct TYPE_4__ {scalar_t__ size; scalar_t__ buf; int /*<<< orphan*/  addr; int /*<<< orphan*/  count; } ;
struct TYPE_3__ {int /*<<< orphan*/  stereo; int /*<<< orphan*/  format; int /*<<< orphan*/  rate; scalar_t__ playing; scalar_t__ capturing; } ;
struct snd_harmony {TYPE_2__ pbuf; TYPE_1__ st; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  HARMONY_SS_MONO ; 
 int /*<<< orphan*/  HARMONY_SS_STEREO ; 
 int /*<<< orphan*/  FUNC0 (struct snd_harmony*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_harmony*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_substream*) ; 
 struct snd_harmony* FUNC5 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int
FUNC6(struct snd_pcm_substream *ss)
{
	struct snd_harmony *h = FUNC5(ss);
	struct snd_pcm_runtime *rt = ss->runtime;
	
	if (h->st.capturing)
		return -EBUSY;
	
	h->pbuf.size = FUNC3(ss);
	h->pbuf.count = FUNC4(ss);
	if (h->pbuf.buf >= h->pbuf.size)
		h->pbuf.buf = 0;
	h->st.playing = 0;

	h->st.rate = FUNC1(rt->rate);
	h->st.format = FUNC2(h, rt->format, 0);
	
	if (rt->channels == 2)
		h->st.stereo = HARMONY_SS_STEREO;
	else
		h->st.stereo = HARMONY_SS_MONO;

	FUNC0(h);

	h->pbuf.addr = rt->dma_addr;

	return 0;
}