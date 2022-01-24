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
struct inode {int /*<<< orphan*/  i_rdev; } ;
struct file {int f_flags; int f_mode; struct au1550_state* private_data; } ;
struct TYPE_4__ {int num_channels; int sample_size; scalar_t__ total_bytes; scalar_t__ subdivision; scalar_t__ ossmaxfrags; scalar_t__ ossfragshift; } ;
struct TYPE_3__ {int num_channels; int sample_size; scalar_t__ total_bytes; scalar_t__ subdivision; scalar_t__ ossmaxfrags; scalar_t__ ossfragshift; } ;
struct au1550_state {int open_mode; int /*<<< orphan*/  sem; int /*<<< orphan*/  open_mutex; TYPE_2__ dma_dac; TYPE_1__ dma_adc; int /*<<< orphan*/  open_wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int ERESTARTSYS ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int O_NONBLOCK ; 
 int SND_DEV_DSP16 ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct au1550_state au1550_state ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (struct au1550_state*) ; 
 int FUNC9 (struct au1550_state*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct au1550_state*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct au1550_state*,int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct au1550_state*) ; 
 int /*<<< orphan*/  FUNC17 (struct au1550_state*) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int
FUNC18(struct inode *inode, struct file *file)
{
	int             minor = FUNC1(inode->i_rdev);
	FUNC0(wait, current);
	struct au1550_state *s = &au1550_state;
	int             ret;

#ifdef DEBUG
	if (file->f_flags & O_NONBLOCK)
		pr_debug("open: non-blocking\n");
	else
		pr_debug("open: blocking\n");
#endif

	file->private_data = s;
	/* wait for device to become free */
	FUNC5(&s->open_mutex);
	while (s->open_mode & file->f_mode) {
		if (file->f_flags & O_NONBLOCK) {
			FUNC6(&s->open_mutex);
			return -EBUSY;
		}
		FUNC3(&s->open_wait, &wait);
		FUNC2(TASK_INTERRUPTIBLE);
		FUNC6(&s->open_mutex);
		FUNC11();
		FUNC10(&s->open_wait, &wait);
		FUNC13(TASK_RUNNING);
		if (FUNC15(current))
			return -ERESTARTSYS;
		FUNC5(&s->open_mutex);
	}

	FUNC17(s);
	FUNC16(s);

	if (file->f_mode & FMODE_READ) {
		s->dma_adc.ossfragshift = s->dma_adc.ossmaxfrags =
			s->dma_adc.subdivision = s->dma_adc.total_bytes = 0;
		s->dma_adc.num_channels = 1;
		s->dma_adc.sample_size = 8;
		FUNC12(s, 8000);
		if ((minor & 0xf) == SND_DEV_DSP16)
			s->dma_adc.sample_size = 16;
	}

	if (file->f_mode & FMODE_WRITE) {
		s->dma_dac.ossfragshift = s->dma_dac.ossmaxfrags =
			s->dma_dac.subdivision = s->dma_dac.total_bytes = 0;
		s->dma_dac.num_channels = 1;
		s->dma_dac.sample_size = 8;
		FUNC14(s, 8000);
		if ((minor & 0xf) == SND_DEV_DSP16)
			s->dma_dac.sample_size = 16;
	}

	if (file->f_mode & FMODE_READ) {
		if ((ret = FUNC8(s)))
			return ret;
	}
	if (file->f_mode & FMODE_WRITE) {
		if ((ret = FUNC9(s)))
			return ret;
	}

	s->open_mode |= file->f_mode & (FMODE_READ | FMODE_WRITE);
	FUNC6(&s->open_mutex);
	FUNC4(&s->sem);
	return 0;
}