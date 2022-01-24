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
struct snd_pcm_substream {int /*<<< orphan*/  runtime; } ;
struct TYPE_2__ {int format; int params; } ;
struct snd_pcm_runtime2 {TYPE_1__ oss; } ;
struct snd_pcm_oss_file {struct snd_pcm_substream** streams; } ;

/* Variables and functions */
 int AFMT_QUERY ; 
 int AFMT_U8 ; 
 struct snd_pcm_runtime2* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_pcm_oss_file*) ; 
 int FUNC2 (struct snd_pcm_oss_file*) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_oss_file *pcm_oss_file, int format)
{
	int formats, idx;
	
	if (format != AFMT_QUERY) {
		formats = FUNC2(pcm_oss_file);
		if (formats < 0)
			return formats;
		if (!(formats & format))
			format = AFMT_U8;
		for (idx = 1; idx >= 0; --idx) {
			struct snd_pcm_substream *substream = pcm_oss_file->streams[idx];
			struct snd_pcm_runtime2 *runtime;
			if (substream == NULL)
				continue;
			runtime = FUNC0(substream->runtime);
			if (runtime->oss.format != format) {
				runtime->oss.params = 1;
				runtime->oss.format = format;
			}
		}
	}
	return FUNC1(pcm_oss_file);
}