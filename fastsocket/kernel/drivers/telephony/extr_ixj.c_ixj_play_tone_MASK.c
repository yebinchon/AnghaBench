#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int low; } ;
struct TYPE_7__ {int tone_state; char tone_index; int /*<<< orphan*/  tone_start_jif; TYPE_1__ dsp; int /*<<< orphan*/  board; } ;
typedef  TYPE_2__ IXJ ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (int,TYPE_2__*) ; 
 int ixjdebug ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(IXJ *j, char tone)
{
	if (!j->tone_state) {
		if(ixjdebug & 0x0002) {
			FUNC2("IXJ %d starting tone %d at %ld\n", j->board, tone, jiffies);
		}
		if (j->dsp.low == 0x20) {
			FUNC0(j);
		}
		j->tone_start_jif = jiffies;

		j->tone_state = 1;
	}

	j->tone_index = tone;
	if (FUNC1(0x6000 + j->tone_index, j))
		return -1;

	return 0;
}