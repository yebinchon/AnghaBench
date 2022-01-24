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
struct snd_usb_substream {TYPE_2__* stream; int /*<<< orphan*/  cur_audiofmt; int /*<<< orphan*/  cur_rate; int /*<<< orphan*/  period_bytes; int /*<<< orphan*/  channels; int /*<<< orphan*/  pcm_format; int /*<<< orphan*/  data_endpoint; int /*<<< orphan*/ * sync_endpoint; } ;
struct TYPE_4__ {TYPE_1__* chip; } ;
struct TYPE_3__ {int /*<<< orphan*/  shutdown_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_usb_substream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_usb_substream *subs)
{
	int ret;

	FUNC0(&subs->stream->chip->shutdown_mutex);
	/* format changed */
	FUNC3(subs, 0, 0, 0);
	ret = FUNC2(subs->data_endpoint,
					  subs->pcm_format,
					  subs->channels,
					  subs->period_bytes,
					  subs->cur_rate,
					  subs->cur_audiofmt,
					  subs->sync_endpoint);
	if (ret < 0)
		goto unlock;

	if (subs->sync_endpoint)
		ret = FUNC2(subs->data_endpoint,
						  subs->pcm_format,
						  subs->channels,
						  subs->period_bytes,
						  subs->cur_rate,
						  subs->cur_audiofmt,
						  NULL);

unlock:
	FUNC1(&subs->stream->chip->shutdown_mutex);
	return ret;
}