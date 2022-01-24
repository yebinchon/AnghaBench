#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int opened; int intr_active; int input_opened; void (* midi_input_intr ) (int,unsigned char) ;scalar_t__ midi_broken; int /*<<< orphan*/  irq_mode; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ sb_devc ;
struct TYPE_6__ {TYPE_1__* devc; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 int ENXIO ; 
 int /*<<< orphan*/  IMODE_MIDI ; 
 int OPEN_READ ; 
 TYPE_4__** midi_devs ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(int dev, int mode,
	     void            (*input) (int dev, unsigned char data),
	     void            (*output) (int dev)
)
{
	sb_devc *devc = midi_devs[dev]->devc;
	unsigned long flags;

	if (devc == NULL)
		return -ENXIO;

	FUNC2(&devc->lock, flags);
	if (devc->opened)
	{
		FUNC3(&devc->lock, flags);
		return -EBUSY;
	}
	devc->opened = 1;
	FUNC3(&devc->lock, flags);

	devc->irq_mode = IMODE_MIDI;
	devc->midi_broken = 0;

	FUNC1(devc);

	if (!FUNC0(devc, 0x35))	/* Start MIDI UART mode */
	{
		  devc->opened = 0;
		  return -EIO;
	}
	devc->intr_active = 1;

	if (mode & OPEN_READ)
	{
		devc->input_opened = 1;
		devc->midi_input_intr = input;
	}
	return 0;
}