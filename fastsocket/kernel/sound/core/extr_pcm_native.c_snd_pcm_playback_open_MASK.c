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
struct snd_pcm {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_DEVICE_TYPE_PCM_PLAYBACK ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*,struct file*) ; 
 struct snd_pcm* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct file*,struct snd_pcm*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *file)
{
	struct snd_pcm *pcm;
	int err = FUNC1(inode, file);
	if (err < 0)
		return err;
	pcm = FUNC2(FUNC0(inode),
				    SNDRV_DEVICE_TYPE_PCM_PLAYBACK);
	return FUNC3(file, pcm, SNDRV_PCM_STREAM_PLAYBACK);
}