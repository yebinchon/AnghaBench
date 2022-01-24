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
struct snd_pcm_substream {int dummy; } ;
struct snd_dbri {int /*<<< orphan*/  lock; } ;
struct dbri_streaminfo {int pipe; int /*<<< orphan*/  size; scalar_t__ offset; } ;

/* Variables and functions */
 scalar_t__ DBRI_PLAY ; 
 struct dbri_streaminfo* FUNC0 (struct snd_dbri*,struct snd_pcm_substream*) ; 
 scalar_t__ FUNC1 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  D_USR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct snd_dbri*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_pcm_substream*) ; 
 struct snd_dbri* FUNC6 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct snd_pcm_substream *substream)
{
	struct snd_dbri *dbri = FUNC6(substream);
	struct dbri_streaminfo *info = FUNC0(dbri, substream);
	int ret;

	info->size = FUNC4(substream);
	if (FUNC1(substream) == DBRI_PLAY)
		info->pipe = 4;	/* Send pipe */
	else
		info->pipe = 6;	/* Receive pipe */

	FUNC7(&dbri->lock);
	info->offset = 0;

	/* Setup the all the transmit/receive descriptors to cover the
	 * whole DMA buffer.
	 */
	ret = FUNC3(dbri, FUNC1(substream),
			  FUNC5(substream));

	FUNC8(&dbri->lock);

	FUNC2(D_USR, "prepare audio output. %d bytes\n", info->size);
	return ret;
}