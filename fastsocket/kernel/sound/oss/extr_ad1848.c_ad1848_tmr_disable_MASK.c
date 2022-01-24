#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  lock; scalar_t__ timer_running; } ;
typedef  TYPE_1__ ad1848_info ;
struct TYPE_6__ {scalar_t__ devc; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int) ; 
 TYPE_2__** audio_devs ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(int dev)
{
	unsigned long   flags;
	ad1848_info    *devc = (ad1848_info *) audio_devs[dev]->devc;

	FUNC2(&devc->lock,flags);
	FUNC1(devc, 16, FUNC0(devc, 16) & ~0x40);
	devc->timer_running = 0;
	FUNC3(&devc->lock,flags);
}