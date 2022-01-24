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
struct cmipci {int /*<<< orphan*/ * channel; } ;

/* Variables and functions */
 int FUNC0 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (struct cmipci*,int /*<<< orphan*/ *) ; 
 struct cmipci* FUNC2 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream)
{
	struct cmipci *cm = FUNC2(substream);
	FUNC1(cm, &cm->channel[1]);
	return FUNC0(substream);
}