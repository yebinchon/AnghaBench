#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ expires; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int curr_tempo ; 
 int curr_timebase ; 
 TYPE_1__ def_tmr ; 
 scalar_t__ jiffies ; 
 int opened ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static int
FUNC2(int dev, int mode)
{
	if (opened)
		return -EBUSY;

	FUNC1();
	curr_tempo = 60;
	curr_timebase = 100;
	opened = 1;
	{
		def_tmr.expires = (1) + jiffies;
		FUNC0(&def_tmr);
	};

	return 0;
}