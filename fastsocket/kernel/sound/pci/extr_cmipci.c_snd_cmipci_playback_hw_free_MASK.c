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
 int /*<<< orphan*/  FUNC0 (struct cmipci*) ; 
 int /*<<< orphan*/  FUNC1 (struct cmipci*,struct snd_pcm_substream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (struct cmipci*,int /*<<< orphan*/ *) ; 
 struct cmipci* FUNC4 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream)
{
	struct cmipci *cm = FUNC4(substream);
	FUNC1(cm, substream, 0, 0);
	FUNC0(cm);
	FUNC3(cm, &cm->channel[0]);
	return FUNC2(substream);
}