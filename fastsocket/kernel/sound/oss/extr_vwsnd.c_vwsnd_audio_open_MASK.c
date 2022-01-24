#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int sw_channels; int sw_samplefmt; int sw_framerate; scalar_t__ frag_count; scalar_t__ byte_count; void* sw_subdivshift; void* sw_fragcount; void* sw_fragshift; scalar_t__ flags; void* swstate; } ;
struct TYPE_5__ {int sw_channels; int sw_samplefmt; int sw_framerate; scalar_t__ frag_count; scalar_t__ byte_count; void* sw_subdivshift; void* sw_fragcount; void* sw_fragshift; scalar_t__ flags; void* swstate; } ;
struct TYPE_7__ {int audio_minor; int open_mode; int /*<<< orphan*/  io_mutex; TYPE_2__ wport; TYPE_1__ rport; int /*<<< orphan*/  open_mutex; int /*<<< orphan*/  open_wait; struct TYPE_7__* next_dev; } ;
typedef  TYPE_3__ vwsnd_dev_t ;
struct inode {int dummy; } ;
struct file {int f_mode; int f_flags; TYPE_3__* private_data; } ;

/* Variables and functions */
 int AFMT_MU_LAW ; 
 int AFMT_S16_LE ; 
 int AFMT_U8 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  DEC_USE_COUNT ; 
 void* DEFAULT_FRAGCOUNT ; 
 void* DEFAULT_FRAGSHIFT ; 
 void* DEFAULT_SUBDIVSHIFT ; 
 int EBUSY ; 
 int ENODEV ; 
 int ERESTARTSYS ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 int /*<<< orphan*/  INC_USE_COUNT ; 
 int O_NONBLOCK ; 
 int SND_DEV_AUDIO ; 
 int SND_DEV_DSP ; 
 int SND_DEV_DSP16 ; 
 void* SW_INITIAL ; 
 int /*<<< orphan*/  current ; 
 int FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_3__* vwsnd_dev_list ; 

__attribute__((used)) static int FUNC8(struct inode *inode, struct file *file)
{
	vwsnd_dev_t *devc;
	int minor = FUNC3(inode);
	int sw_samplefmt;

	FUNC1("(inode=0x%p, file=0x%p)\n", inode, file);

	INC_USE_COUNT;
	for (devc = vwsnd_dev_list; devc; devc = devc->next_dev)
		if ((devc->audio_minor & ~0x0F) == (minor & ~0x0F))
			break;

	if (devc == NULL) {
		DEC_USE_COUNT;
		return -ENODEV;
	}

	FUNC5(&devc->open_mutex);
	while (devc->open_mode & file->f_mode) {
		FUNC6(&devc->open_mutex);
		if (file->f_flags & O_NONBLOCK) {
			DEC_USE_COUNT;
			return -EBUSY;
		}
		FUNC4(&devc->open_wait);
		if (FUNC7(current)) {
			DEC_USE_COUNT;
			return -ERESTARTSYS;
		}
		FUNC5(&devc->open_mutex);
	}
	devc->open_mode |= file->f_mode & (FMODE_READ | FMODE_WRITE);
	FUNC6(&devc->open_mutex);

	/* get default sample format from minor number. */

	sw_samplefmt = 0;
	if ((minor & 0xF) == SND_DEV_DSP)
		sw_samplefmt = AFMT_U8;
	else if ((minor & 0xF) == SND_DEV_AUDIO)
		sw_samplefmt = AFMT_MU_LAW;
	else if ((minor & 0xF) == SND_DEV_DSP16)
		sw_samplefmt = AFMT_S16_LE;
	else
		FUNC0(0);

	/* Initialize vwsnd_ports. */

	FUNC5(&devc->io_mutex);
	{
		if (file->f_mode & FMODE_READ) {
			devc->rport.swstate        = SW_INITIAL;
			devc->rport.flags          = 0;
			devc->rport.sw_channels    = 1;
			devc->rport.sw_samplefmt   = sw_samplefmt;
			devc->rport.sw_framerate   = 8000;
			devc->rport.sw_fragshift   = DEFAULT_FRAGSHIFT;
			devc->rport.sw_fragcount   = DEFAULT_FRAGCOUNT;
			devc->rport.sw_subdivshift = DEFAULT_SUBDIVSHIFT;
			devc->rport.byte_count     = 0;
			devc->rport.frag_count     = 0;
		}
		if (file->f_mode & FMODE_WRITE) {
			devc->wport.swstate        = SW_INITIAL;
			devc->wport.flags          = 0;
			devc->wport.sw_channels    = 1;
			devc->wport.sw_samplefmt   = sw_samplefmt;
			devc->wport.sw_framerate   = 8000;
			devc->wport.sw_fragshift   = DEFAULT_FRAGSHIFT;
			devc->wport.sw_fragcount   = DEFAULT_FRAGCOUNT;
			devc->wport.sw_subdivshift = DEFAULT_SUBDIVSHIFT;
			devc->wport.byte_count     = 0;
			devc->wport.frag_count     = 0;
		}
	}
	FUNC6(&devc->io_mutex);

	file->private_data = devc;
	FUNC2();
	return 0;
}