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
struct snd_pcm_runtime {int dummy; } ;
struct TYPE_3__ {long buffer_bytes; } ;
struct TYPE_4__ {TYPE_1__ oss; } ;

/* Variables and functions */
 long FUNC0 (struct snd_pcm_runtime*,long) ; 
 TYPE_2__* FUNC1 (struct snd_pcm_runtime*) ; 
 long FUNC2 (struct snd_pcm_substream*) ; 

__attribute__((used)) static long FUNC3(struct snd_pcm_substream *substream, long bytes)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	long buffer_size = FUNC2(substream);
	if (buffer_size == FUNC1(runtime)->oss.buffer_bytes)
		return FUNC0(runtime, bytes);
	return FUNC0(runtime, (buffer_size * bytes) / FUNC1(runtime)->oss.buffer_bytes);
}