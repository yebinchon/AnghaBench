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
struct usb_stream_config {scalar_t__ version; int sample_rate; int frame_size; int period_frames; } ;
struct usb_stream {scalar_t__ state; int /*<<< orphan*/  cfg; } ;
struct TYPE_4__ {int /*<<< orphan*/  sleep; struct usb_stream* s; } ;
struct us122l {TYPE_2__ sk; int /*<<< orphan*/  mutex; struct file* slave; struct file* master; TYPE_1__* dev; } ;
struct snd_hwdep {int /*<<< orphan*/  card; struct us122l* private_data; } ;
struct file {int dummy; } ;
struct TYPE_3__ {scalar_t__ speed; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOTTY ; 
 int ENXIO ; 
 scalar_t__ FUNC0 (struct usb_stream_config*) ; 
 int FUNC1 (struct usb_stream_config*) ; 
 int /*<<< orphan*/  SNDRV_CTL_POWER_D0 ; 
 unsigned int SNDRV_USB_STREAM_IOCTL_SET_PARAMS ; 
 scalar_t__ USB_SPEED_HIGH ; 
 scalar_t__ USB_STREAM_INTERFACE_VERSION ; 
 int /*<<< orphan*/  FUNC2 (struct usb_stream_config*) ; 
 scalar_t__ FUNC3 (struct usb_stream_config*,int /*<<< orphan*/ *,int) ; 
 struct usb_stream_config* FUNC4 (void*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct us122l*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct us122l*) ; 
 scalar_t__ usb_stream_xrun ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct snd_hwdep *hw, struct file *file,
				  unsigned cmd, unsigned long arg)
{
	struct usb_stream_config *cfg;
	struct us122l *us122l = hw->private_data;
	struct usb_stream *s;
	unsigned min_period_frames;
	int err = 0;
	bool high_speed;

	if (cmd != SNDRV_USB_STREAM_IOCTL_SET_PARAMS)
		return -ENOTTY;

	cfg = FUNC4((void *)arg, sizeof(*cfg));
	if (FUNC0(cfg))
		return FUNC1(cfg);

	if (cfg->version != USB_STREAM_INTERFACE_VERSION) {
		err = -ENXIO;
		goto free;
	}
	high_speed = us122l->dev->speed == USB_SPEED_HIGH;
	if ((cfg->sample_rate != 44100 && cfg->sample_rate != 48000  &&
	     (!high_speed ||
	      (cfg->sample_rate != 88200 && cfg->sample_rate != 96000))) ||
	    cfg->frame_size != 6 ||
	    cfg->period_frames > 0x3000) {
		err = -EINVAL;
		goto free;
	}
	switch (cfg->sample_rate) {
	case 44100:
		min_period_frames = 48;
		break;
	case 48000:
		min_period_frames = 52;
		break;
	default:
		min_period_frames = 104;
		break;
	}
	if (!high_speed)
		min_period_frames <<= 1;
	if (cfg->period_frames < min_period_frames) {
		err = -EINVAL;
		goto free;
	}

	FUNC7(hw->card, SNDRV_CTL_POWER_D0);

	FUNC5(&us122l->mutex);
	s = us122l->sk.s;
	if (!us122l->master)
		us122l->master = file;
	else if (us122l->master != file) {
		if (!s || FUNC3(cfg, &s->cfg, sizeof(*cfg))) {
			err = -EIO;
			goto unlock;
		}
		us122l->slave = file;
	}
	if (!s || FUNC3(cfg, &s->cfg, sizeof(*cfg)) ||
	    s->state == usb_stream_xrun) {
		FUNC9(us122l);
		if (!FUNC8(us122l, cfg->sample_rate, cfg->period_frames))
			err = -EIO;
		else
			err = 1;
	}
unlock:
	FUNC6(&us122l->mutex);
free:
	FUNC2(cfg);
	FUNC10(&us122l->sk.sleep);
	return err;
}