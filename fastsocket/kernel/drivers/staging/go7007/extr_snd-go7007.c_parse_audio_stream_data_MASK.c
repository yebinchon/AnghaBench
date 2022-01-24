#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct snd_pcm_runtime {scalar_t__ buffer_size; scalar_t__ dma_bytes; int dma_area; scalar_t__ period_size; } ;
struct go7007_snd {scalar_t__ hw_ptr; scalar_t__ avail; scalar_t__ w_idx; TYPE_1__* substream; scalar_t__ capturing; int /*<<< orphan*/  lock; } ;
struct go7007 {struct go7007_snd* snd_context; } ;
struct TYPE_2__ {struct snd_pcm_runtime* runtime; } ;

/* Variables and functions */
 int FUNC0 (struct snd_pcm_runtime*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct go7007 *go, u8 *buf, int length)
{
	struct go7007_snd *gosnd = go->snd_context;
	struct snd_pcm_runtime *runtime = gosnd->substream->runtime;
	int frames = FUNC0(runtime, length);

	FUNC3(&gosnd->lock);
	gosnd->hw_ptr += frames;
	if (gosnd->hw_ptr >= runtime->buffer_size)
		gosnd->hw_ptr -= runtime->buffer_size;
	gosnd->avail += frames;
	FUNC4(&gosnd->lock);
	if (gosnd->w_idx + length > runtime->dma_bytes) {
		int cpy = runtime->dma_bytes - gosnd->w_idx;

		FUNC1(runtime->dma_area + gosnd->w_idx, buf, cpy);
		length -= cpy;
		buf += cpy;
		gosnd->w_idx = 0;
	}
	FUNC1(runtime->dma_area + gosnd->w_idx, buf, length);
	gosnd->w_idx += length;
	FUNC3(&gosnd->lock);
	if (gosnd->avail < runtime->period_size) {
		FUNC4(&gosnd->lock);
		return;
	}
	gosnd->avail -= runtime->period_size;
	FUNC4(&gosnd->lock);
	if (gosnd->capturing)
		FUNC2(gosnd->substream);
}