#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {unsigned char* saved_regs; int /*<<< orphan*/  lock; TYPE_1__** mix_devices; } ;
typedef  TYPE_2__ ad1848_info ;
struct TYPE_7__ {int regno; int mutereg; } ;

/* Variables and functions */
 unsigned char FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,unsigned char*,unsigned char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(ad1848_info *devc, int dev, int value, int channel)
{
	int regoffs, muteregoffs;
	unsigned char val, muteval;
	unsigned long flags;

	regoffs = devc->mix_devices[dev][channel].regno;
	muteregoffs = devc->mix_devices[dev][channel].mutereg;
	val = FUNC0(devc, regoffs);

	if (muteregoffs != regoffs) {
		muteval = FUNC0(devc, muteregoffs);
		FUNC2(devc, &val, &muteval, dev, channel, value);
	}
	else
		FUNC2(devc, &val, &val, dev, channel, value);

	FUNC3(&devc->lock,flags);
	FUNC1(devc, regoffs, val);
	devc->saved_regs[regoffs] = val;
	if (muteregoffs != regoffs) {
		FUNC1(devc, muteregoffs, muteval);
		devc->saved_regs[muteregoffs] = muteval;
	}
	FUNC4(&devc->lock,flags);
}