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
struct vm_area_struct {unsigned long vm_pgoff; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_file {int /*<<< orphan*/  no_compat_mmap; struct snd_pcm_substream* substream; } ;
struct file {struct snd_pcm_file* private_data; } ;

/* Variables and functions */
 int ENXIO ; 
 unsigned long PAGE_SHIFT ; 
 scalar_t__ FUNC0 (struct snd_pcm_substream*) ; 
#define  SNDRV_PCM_MMAP_OFFSET_CONTROL 129 
#define  SNDRV_PCM_MMAP_OFFSET_STATUS 128 
 int FUNC1 (struct snd_pcm_substream*,struct file*,struct vm_area_struct*) ; 
 int FUNC2 (struct snd_pcm_substream*,struct file*,struct vm_area_struct*) ; 
 int FUNC3 (struct snd_pcm_substream*,struct file*,struct vm_area_struct*) ; 

__attribute__((used)) static int FUNC4(struct file *file, struct vm_area_struct *area)
{
	struct snd_pcm_file * pcm_file;
	struct snd_pcm_substream *substream;	
	unsigned long offset;
	
	pcm_file = file->private_data;
	substream = pcm_file->substream;
	if (FUNC0(substream))
		return -ENXIO;

	offset = area->vm_pgoff << PAGE_SHIFT;
	switch (offset) {
	case SNDRV_PCM_MMAP_OFFSET_STATUS:
		if (pcm_file->no_compat_mmap)
			return -ENXIO;
		return FUNC3(substream, file, area);
	case SNDRV_PCM_MMAP_OFFSET_CONTROL:
		if (pcm_file->no_compat_mmap)
			return -ENXIO;
		return FUNC1(substream, file, area);
	default:
		return FUNC2(substream, file, area);
	}
	return 0;
}