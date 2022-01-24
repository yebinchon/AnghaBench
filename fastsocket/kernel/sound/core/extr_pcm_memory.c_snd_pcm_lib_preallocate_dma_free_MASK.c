#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * area; } ;
struct snd_pcm_substream {TYPE_1__ dma_buffer; scalar_t__ dma_buf_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct snd_pcm_substream *substream)
{
	if (substream->dma_buffer.area == NULL)
		return;
	if (substream->dma_buf_id)
		FUNC1(&substream->dma_buffer, substream->dma_buf_id);
	else
		FUNC0(&substream->dma_buffer);
	substream->dma_buffer.area = NULL;
}