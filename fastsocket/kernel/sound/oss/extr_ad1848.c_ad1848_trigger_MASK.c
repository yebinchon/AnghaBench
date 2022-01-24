#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int open_mode; } ;
typedef  TYPE_1__ ad1848_port_info ;
struct TYPE_8__ {int audio_mode; int /*<<< orphan*/  lock; } ;
typedef  TYPE_2__ ad1848_info ;
struct TYPE_9__ {scalar_t__ portc; scalar_t__ devc; } ;

/* Variables and functions */
 int OPEN_READ ; 
 int OPEN_WRITE ; 
 int PCM_ENABLE_INPUT ; 
 int PCM_ENABLE_OUTPUT ; 
 unsigned char FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,unsigned char) ; 
 TYPE_3__** audio_devs ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(int dev, int state)
{
	ad1848_info    *devc = (ad1848_info *) audio_devs[dev]->devc;
	ad1848_port_info *portc = (ad1848_port_info *) audio_devs[dev]->portc;
	unsigned long   flags;
	unsigned char   tmp, old;

	FUNC3(&devc->lock,flags);
	state &= devc->audio_mode;

	tmp = old = FUNC0(devc, 9);

	if (portc->open_mode & OPEN_READ)
	{
		  if (state & PCM_ENABLE_INPUT)
			  tmp |= 0x02;
		  else
			  tmp &= ~0x02;
	}
	if (portc->open_mode & OPEN_WRITE)
	{
		if (state & PCM_ENABLE_OUTPUT)
			tmp |= 0x01;
		else
			tmp &= ~0x01;
	}
	/* ad_mute(devc); */
	if (tmp != old)
	{
		  FUNC2(devc, 9, tmp);
		  FUNC1(devc);
	}
	FUNC4(&devc->lock,flags);
}