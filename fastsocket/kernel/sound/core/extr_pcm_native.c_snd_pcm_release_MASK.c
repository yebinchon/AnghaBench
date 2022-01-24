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
struct snd_pcm_substream {struct snd_pcm* pcm; } ;
struct snd_pcm_file {struct snd_pcm_substream* substream; } ;
struct snd_pcm {TYPE_1__* card; int /*<<< orphan*/  open_wait; int /*<<< orphan*/  open_mutex; } ;
struct inode {int dummy; } ;
struct file {struct snd_pcm_file* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  module; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_file*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct file*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct inode *inode, struct file *file)
{
	struct snd_pcm *pcm;
	struct snd_pcm_substream *substream;
	struct snd_pcm_file *pcm_file;

	pcm_file = file->private_data;
	substream = pcm_file->substream;
	if (FUNC4(!substream))
		return -ENXIO;
	pcm = substream->pcm;
	FUNC2(&pcm->open_mutex);
	FUNC6(substream);
	FUNC0(pcm_file);
	FUNC3(&pcm->open_mutex);
	FUNC7(&pcm->open_wait);
	FUNC1(pcm->card->module);
	FUNC5(pcm->card, file);
	return 0;
}