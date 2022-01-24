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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dummy; } ;
struct snd_bt87x {int current_line; int line_bytes; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_runtime*,int) ; 
 struct snd_bt87x* FUNC1 (struct snd_pcm_substream*) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC2(struct snd_pcm_substream *substream)
{
	struct snd_bt87x *chip = FUNC1(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;

	return (snd_pcm_uframes_t)FUNC0(runtime, chip->current_line * chip->line_bytes);
}