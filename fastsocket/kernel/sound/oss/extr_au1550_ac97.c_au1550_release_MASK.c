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
struct inode {int dummy; } ;
struct file {int f_mode; int f_flags; scalar_t__ private_data; } ;
struct TYPE_4__ {int /*<<< orphan*/ * rawbuf; } ;
struct TYPE_3__ {int /*<<< orphan*/ * rawbuf; } ;
struct au1550_state {int open_mode; int /*<<< orphan*/  open_wait; int /*<<< orphan*/  open_mutex; TYPE_2__ dma_adc; TYPE_1__ dma_dac; } ;

/* Variables and functions */
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  FUNC0 (struct au1550_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct au1550_state*) ; 
 int /*<<< orphan*/  FUNC6 (struct au1550_state*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(struct inode *inode, struct file *file)
{
	struct au1550_state *s = (struct au1550_state *)file->private_data;

	FUNC2();

	if (file->f_mode & FMODE_WRITE) {
		FUNC7();
		FUNC0(s, file->f_flags & O_NONBLOCK);
		FUNC2();
	}

	FUNC3(&s->open_mutex);
	if (file->f_mode & FMODE_WRITE) {
		FUNC6(s);
		FUNC1(s->dma_dac.rawbuf);
		s->dma_dac.rawbuf = NULL;
	}
	if (file->f_mode & FMODE_READ) {
		FUNC5(s);
		FUNC1(s->dma_adc.rawbuf);
		s->dma_adc.rawbuf = NULL;
	}
	s->open_mode &= ((~file->f_mode) & (FMODE_READ|FMODE_WRITE));
	FUNC4(&s->open_mutex);
	FUNC8(&s->open_wait);
	FUNC7();
	return 0;
}