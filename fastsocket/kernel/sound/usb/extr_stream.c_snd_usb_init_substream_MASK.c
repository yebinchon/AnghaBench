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
struct snd_usb_substream {int direction; int /*<<< orphan*/  ep_num; int /*<<< orphan*/  fmt_type; int /*<<< orphan*/  num_formats; int /*<<< orphan*/  formats; int /*<<< orphan*/  fmt_list; int /*<<< orphan*/  txfr_quirk; int /*<<< orphan*/  dev; struct snd_usb_stream* stream; int /*<<< orphan*/  lock; } ;
struct snd_usb_stream {int /*<<< orphan*/  pcm; TYPE_1__* chip; struct snd_usb_substream* substream; } ;
struct audioformat {int /*<<< orphan*/  endpoint; int /*<<< orphan*/  fmt_type; int /*<<< orphan*/  formats; int /*<<< orphan*/  list; } ;
struct TYPE_2__ {int /*<<< orphan*/  txfr_quirk; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct snd_usb_stream *as,
				   int stream,
				   struct audioformat *fp)
{
	struct snd_usb_substream *subs = &as->substream[stream];

	FUNC0(&subs->fmt_list);
	FUNC3(&subs->lock);

	subs->stream = as;
	subs->direction = stream;
	subs->dev = as->chip->dev;
	subs->txfr_quirk = as->chip->txfr_quirk;

	FUNC2(as->pcm, stream);

	FUNC1(&fp->list, &subs->fmt_list);
	subs->formats |= fp->formats;
	subs->num_formats++;
	subs->fmt_type = fp->fmt_type;
	subs->ep_num = fp->endpoint;
}