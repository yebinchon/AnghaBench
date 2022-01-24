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
struct snd_pcm_substream {int ref_count; int /*<<< orphan*/  pcm_release; struct snd_pcm_file* file; } ;
struct snd_pcm_file {struct snd_pcm_substream* substream; } ;
struct snd_pcm {int dummy; } ;
struct file {struct snd_pcm_file* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct snd_pcm_file* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pcm_release_private ; 
 int FUNC1 (struct snd_pcm*,int,struct file*,struct snd_pcm_substream**) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC3(struct file *file,
			     struct snd_pcm *pcm,
			     int stream,
			     struct snd_pcm_file **rpcm_file)
{
	struct snd_pcm_file *pcm_file;
	struct snd_pcm_substream *substream;
	int err;

	if (rpcm_file)
		*rpcm_file = NULL;

	err = FUNC1(pcm, stream, file, &substream);
	if (err < 0)
		return err;

	pcm_file = FUNC0(sizeof(*pcm_file), GFP_KERNEL);
	if (pcm_file == NULL) {
		FUNC2(substream);
		return -ENOMEM;
	}
	pcm_file->substream = substream;
	if (substream->ref_count == 1) {
		substream->file = pcm_file;
		substream->pcm_release = pcm_release_private;
	}
	file->private_data = pcm_file;
	if (rpcm_file)
		*rpcm_file = pcm_file;
	return 0;
}