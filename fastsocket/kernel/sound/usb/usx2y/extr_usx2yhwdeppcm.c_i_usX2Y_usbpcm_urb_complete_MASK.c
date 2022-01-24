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
struct usX2Ydev {int wait_iso_frame; struct snd_usX2Y_substream** subs; int /*<<< orphan*/  dev; } ;
struct urb {int status; int start_frame; int /*<<< orphan*/  pipe; struct snd_usX2Y_substream* context; } ;
struct snd_usX2Y_substream {int /*<<< orphan*/  state; struct urb* completed_urb; int /*<<< orphan*/  endpoint; struct usX2Ydev* usX2Y; } ;

/* Variables and functions */
 size_t SNDRV_PCM_STREAM_CAPTURE ; 
 size_t SNDRV_PCM_STREAM_PLAYBACK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ state_PREPARED ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct usX2Ydev*) ; 
 int /*<<< orphan*/  FUNC6 (struct usX2Ydev*,struct snd_usX2Y_substream*,struct urb*) ; 
 int /*<<< orphan*/  FUNC7 (struct usX2Ydev*,struct snd_usX2Y_substream*,struct urb*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_usX2Y_substream*,struct snd_usX2Y_substream*,struct snd_usX2Y_substream*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct urb *urb)
{
	struct snd_usX2Y_substream *subs = urb->context;
	struct usX2Ydev *usX2Y = subs->usX2Y;
	struct snd_usX2Y_substream *capsubs, *capsubs2, *playbacksubs;

	if (FUNC4(FUNC0(&subs->state) < state_PREPARED)) {
		FUNC3("hcd_frame=%i ep=%i%s status=%i start_frame=%i\n",
			    FUNC9(usX2Y->dev),
			    subs->endpoint, FUNC10(urb->pipe) ? "in" : "out",
			    urb->status, urb->start_frame);
		return;
	}
	if (FUNC4(urb->status)) {
		FUNC7(usX2Y, subs, urb);
		return;
	}
	if (FUNC1((urb->start_frame & 0xFFFF) == (usX2Y->wait_iso_frame & 0xFFFF)))
		subs->completed_urb = urb;
	else {
		FUNC6(usX2Y, subs, urb);
		return;
	}

	capsubs = usX2Y->subs[SNDRV_PCM_STREAM_CAPTURE];
	capsubs2 = usX2Y->subs[SNDRV_PCM_STREAM_CAPTURE + 2];
	playbacksubs = usX2Y->subs[SNDRV_PCM_STREAM_PLAYBACK];
	if (capsubs->completed_urb && FUNC0(&capsubs->state) >= state_PREPARED &&
	    (NULL == capsubs2 || capsubs2->completed_urb) &&
	    (playbacksubs->completed_urb || FUNC0(&playbacksubs->state) < state_PREPARED)) {
		if (!FUNC8(capsubs, capsubs2, playbacksubs, urb->start_frame))
			usX2Y->wait_iso_frame += FUNC2();
		else {
			FUNC3("\n");
			FUNC5(usX2Y);
		}
	}
}