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
struct snd_ali_voice {void (* private_free ) (void*) ;int /*<<< orphan*/ * substream; scalar_t__ synth; scalar_t__ pcm; scalar_t__ use; int /*<<< orphan*/  number; int /*<<< orphan*/ * private_data; } ;
struct snd_ali {int /*<<< orphan*/  voice_alloc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_ali*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ali*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct snd_ali * codec,
			       struct snd_ali_voice *pvoice)
{
	void (*private_free)(void *);
	void *private_data;

	FUNC2("free_voice: channel=%d\n",pvoice->number);
	if (!pvoice->use)
		return;
	FUNC0(codec, pvoice->number, pvoice->number);
	FUNC3(&codec->voice_alloc);
	private_free = pvoice->private_free;
	private_data = pvoice->private_data;
	pvoice->private_free = NULL;
	pvoice->private_data = NULL;
	if (pvoice->pcm)
		FUNC1(codec, pvoice->number);
	pvoice->use = pvoice->pcm = pvoice->synth = 0;
	pvoice->substream = NULL;
	FUNC4(&codec->voice_alloc);
	if (private_free)
		private_free(private_data);
}