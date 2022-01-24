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
struct TYPE_5__ {int /*<<< orphan*/  open_mode; } ;
typedef  TYPE_1__ ad1848_port_info ;
struct TYPE_6__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  open_mode; scalar_t__ audio_mode; scalar_t__ intr_active; } ;
typedef  TYPE_2__ ad1848_info ;
struct TYPE_7__ {scalar_t__ portc; scalar_t__ devc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_3__** audio_devs ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(int dev)
{
	unsigned long   flags;
	ad1848_info    *devc = (ad1848_info *) audio_devs[dev]->devc;
	ad1848_port_info *portc = (ad1848_port_info *) audio_devs[dev]->portc;

	FUNC0(FUNC3("ad1848_close(void)\n"));

	devc->intr_active = 0;
	FUNC1(dev);

	FUNC4(&devc->lock,flags);

	devc->audio_mode = 0;
	devc->open_mode &= ~portc->open_mode;
	portc->open_mode = 0;

	FUNC2(devc);
	FUNC5(&devc->lock,flags);
}