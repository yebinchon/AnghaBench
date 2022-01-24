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
struct TYPE_2__ {scalar_t__ buffer_pos; scalar_t__ period_pos; } ;
struct ua101 {TYPE_1__ capture; int /*<<< orphan*/  states; int /*<<< orphan*/  alsa_capture_wait; int /*<<< orphan*/  mutex; } ;
struct snd_pcm_substream {struct ua101* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAPTURE_URB_COMPLETED ; 
 int /*<<< orphan*/  DISCONNECTED ; 
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  USB_CAPTURE_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ua101*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream)
{
	struct ua101 *ua = substream->private_data;
	int err;

	FUNC0(&ua->mutex);
	err = FUNC2(ua);
	FUNC1(&ua->mutex);
	if (err < 0)
		return err;

	/*
	 * The EHCI driver schedules the first packet of an iso stream at 10 ms
	 * in the future, i.e., no data is actually captured for that long.
	 * Take the wait here so that the stream is known to be actually
	 * running when the start trigger has been called.
	 */
	FUNC4(ua->alsa_capture_wait,
		   FUNC3(CAPTURE_URB_COMPLETED, &ua->states) ||
		   !FUNC3(USB_CAPTURE_RUNNING, &ua->states));
	if (FUNC3(DISCONNECTED, &ua->states))
		return -ENODEV;
	if (!FUNC3(USB_CAPTURE_RUNNING, &ua->states))
		return -EIO;

	ua->capture.period_pos = 0;
	ua->capture.buffer_pos = 0;
	return 0;
}