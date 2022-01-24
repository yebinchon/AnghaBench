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
struct TYPE_3__ {int opened; int intr_active; int input_opened; void (* midi_input_intr ) (int,unsigned char) ;int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ vmidi_devc ;
struct TYPE_4__ {TYPE_1__* devc; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENXIO ; 
 int OPEN_READ ; 
 TYPE_2__** midi_devs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC2 (int dev, int mode,
	      void            (*input) (int dev, unsigned char data),
	      void            (*output) (int dev)
)
{
	vmidi_devc *devc = midi_devs[dev]->devc;
	unsigned long flags;

	if (devc == NULL)
		return -(ENXIO);

	FUNC0(&devc->lock,flags);
	if (devc->opened)
	{
		FUNC1(&devc->lock,flags);
		return -(EBUSY);
	}
	devc->opened = 1;
	FUNC1(&devc->lock,flags);

	devc->intr_active = 1;

	if (mode & OPEN_READ)
	{
		devc->input_opened = 1;
		devc->midi_input_intr = input;
	}

	return 0;
}