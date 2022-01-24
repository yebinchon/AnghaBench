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
struct snd_pcm_substream {TYPE_2__* runtime; } ;
struct snd_dbri {TYPE_1__* op; } ;
struct dbri_streaminfo {int pipe; scalar_t__ dvma_buffer; } ;
struct TYPE_4__ {int /*<<< orphan*/  buffer_size; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ DBRI_PLAY ; 
 struct dbri_streaminfo* FUNC0 (struct snd_dbri*,struct snd_pcm_substream*) ; 
 scalar_t__ FUNC1 (struct snd_pcm_substream*) ; 
 int DMA_FROM_DEVICE ; 
 int DMA_TO_DEVICE ; 
 int /*<<< orphan*/  D_USR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_dbri*,int) ; 
 int FUNC5 (struct snd_pcm_substream*) ; 
 struct snd_dbri* FUNC6 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream)
{
	struct snd_dbri *dbri = FUNC6(substream);
	struct dbri_streaminfo *info = FUNC0(dbri, substream);
	int direction;

	FUNC3(D_USR, "hw_free.\n");

	/* hw_free can get called multiple times. Only unmap the DMA once.
	 */
	if (info->dvma_buffer) {
		if (FUNC1(substream) == DBRI_PLAY)
			direction = DMA_TO_DEVICE;
		else
			direction = DMA_FROM_DEVICE;

		FUNC2(&dbri->op->dev, info->dvma_buffer,
				 substream->runtime->buffer_size, direction);
		info->dvma_buffer = 0;
	}
	if (info->pipe != -1) {
		FUNC4(dbri, info->pipe);
		info->pipe = -1;
	}

	return FUNC5(substream);
}