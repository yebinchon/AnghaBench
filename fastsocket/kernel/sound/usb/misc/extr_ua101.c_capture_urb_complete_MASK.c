#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct urb {TYPE_1__* iso_frame_desc; int /*<<< orphan*/  status; struct ua101* context; } ;
struct ua101_stream {unsigned int frame_bytes; int /*<<< orphan*/  substream; } ;
struct TYPE_6__ {scalar_t__ queue_length; } ;
struct ua101 {unsigned int rate_feedback_start; int rate_feedback_count; unsigned int* rate_feedback; int /*<<< orphan*/  lock; int /*<<< orphan*/  playback_tasklet; int /*<<< orphan*/  ready_playback_urbs; int /*<<< orphan*/  states; int /*<<< orphan*/  rate_feedback_wait; TYPE_3__ playback; TYPE_2__* dev; struct ua101_stream capture; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {scalar_t__ status; unsigned int actual_length; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALSA_CAPTURE_RUNNING ; 
 int /*<<< orphan*/  ECONNRESET ; 
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ESHUTDOWN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  USB_CAPTURE_RUNNING ; 
 int /*<<< orphan*/  USB_PLAYBACK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct ua101*) ; 
 int /*<<< orphan*/  FUNC1 (struct ua101*) ; 
 int /*<<< orphan*/  FUNC2 (struct ua101*) ; 
 int /*<<< orphan*/  FUNC3 (struct ua101*) ; 
 int /*<<< orphan*/  FUNC4 (struct ua101*,unsigned int*,int) ; 
 int FUNC5 (struct ua101_stream*,struct urb*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int FUNC15 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC17(struct urb *urb)
{
	struct ua101 *ua = urb->context;
	struct ua101_stream *stream = &ua->capture;
	unsigned long flags;
	unsigned int frames, write_ptr;
	bool do_period_elapsed;
	int err;

	if (FUNC13(urb->status == -ENOENT ||		/* unlinked */
		     urb->status == -ENODEV ||		/* device removed */
		     urb->status == -ECONNRESET ||	/* unlinked */
		     urb->status == -ESHUTDOWN))	/* device disabled */
		goto stream_stopped;

	if (urb->status >= 0 && urb->iso_frame_desc[0].status >= 0)
		frames = urb->iso_frame_desc[0].actual_length /
			stream->frame_bytes;
	else
		frames = 0;

	FUNC9(&ua->lock, flags);

	if (frames > 0 && FUNC12(ALSA_CAPTURE_RUNNING, &ua->states))
		do_period_elapsed = FUNC5(stream, urb, frames);
	else
		do_period_elapsed = false;

	if (FUNC12(USB_CAPTURE_RUNNING, &ua->states)) {
		err = FUNC15(urb, GFP_ATOMIC);
		if (FUNC13(err < 0)) {
			FUNC10(&ua->lock, flags);
			FUNC6(&ua->dev->dev, "USB request error %d: %s\n",
				err, FUNC14(err));
			goto stream_stopped;
		}

		/* append packet size to FIFO */
		write_ptr = ua->rate_feedback_start;
		FUNC4(ua, &write_ptr, ua->rate_feedback_count);
		ua->rate_feedback[write_ptr] = frames;
		if (ua->rate_feedback_count < ua->playback.queue_length) {
			ua->rate_feedback_count++;
			if (ua->rate_feedback_count ==
						ua->playback.queue_length)
				FUNC16(&ua->rate_feedback_wait);
		} else {
			/*
			 * Ring buffer overflow; this happens when the playback
			 * stream is not running.  Throw away the oldest entry,
			 * so that the playback stream, when it starts, sees
			 * the most recent packet sizes.
			 */
			FUNC4(ua, &ua->rate_feedback_start, 1);
		}
		if (FUNC12(USB_PLAYBACK_RUNNING, &ua->states) &&
		    !FUNC7(&ua->ready_playback_urbs))
			FUNC11(&ua->playback_tasklet);
	}

	FUNC10(&ua->lock, flags);

	if (do_period_elapsed)
		FUNC8(stream->substream);

	return;

stream_stopped:
	FUNC3(ua);
	FUNC2(ua);
	FUNC1(ua);
	FUNC0(ua);
}