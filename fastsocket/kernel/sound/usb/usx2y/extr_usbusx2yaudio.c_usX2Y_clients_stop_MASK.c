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
struct usX2Ydev {int /*<<< orphan*/  prepare_wait_queue; int /*<<< orphan*/ * prepare_subs; struct snd_usX2Y_substream** subs; } ;
struct urb {scalar_t__ start_frame; struct snd_usX2Y_substream* status; } ;
struct snd_usX2Y_substream {struct urb** urb; int /*<<< orphan*/  pcm_substream; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int NRURBS ; 
 int /*<<< orphan*/  SNDRV_PCM_STATE_XRUN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,struct snd_usX2Y_substream*,scalar_t__) ; 
 scalar_t__ state_PRERUNNING ; 
 int /*<<< orphan*/  state_STOPPED ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct usX2Ydev *usX2Y)
{
	int s, u;

	for (s = 0; s < 4; s++) {
		struct snd_usX2Y_substream *subs = usX2Y->subs[s];
		if (subs) {
			FUNC3("%i %p state=%i\n", s, subs, FUNC0(&subs->state));
			FUNC1(&subs->state, state_STOPPED);
		}
	}
	for (s = 0; s < 4; s++) {
		struct snd_usX2Y_substream *subs = usX2Y->subs[s];
		if (subs) {
			if (FUNC0(&subs->state) >= state_PRERUNNING) {
				FUNC2(subs->pcm_substream, SNDRV_PCM_STATE_XRUN);
			}
			for (u = 0; u < NRURBS; u++) {
				struct urb *urb = subs->urb[u];
				if (NULL != urb)
					FUNC3("%i status=%i start_frame=%i\n",
						    u, urb->status, urb->start_frame);
			}
		}
	}
	usX2Y->prepare_subs = NULL;
	FUNC4(&usX2Y->prepare_wait_queue);
}