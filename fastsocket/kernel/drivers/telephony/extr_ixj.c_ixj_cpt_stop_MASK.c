#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {struct TYPE_15__* ce; } ;
struct TYPE_13__ {int low; } ;
struct TYPE_12__ {scalar_t__ ringback; scalar_t__ busytone; scalar_t__ dialtone; } ;
struct TYPE_14__ {int play_mode; int rec_mode; TYPE_2__ dsp; TYPE_4__* cadence_t; scalar_t__ tone_cadence_state; scalar_t__ tone_state; TYPE_1__ flags; } ;
typedef  TYPE_3__ IXJ ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 

__attribute__((used)) static void FUNC7(IXJ *j)
{
	if(j->tone_state || j->tone_cadence_state)
	{
		j->flags.dialtone = 0;
		j->flags.busytone = 0;
		j->flags.ringback = 0;
		FUNC5(0x0001, j);
		FUNC4(0x0000, j);
		FUNC2(j, 0);
		j->tone_state = j->tone_cadence_state = 0;
		if (j->cadence_t) {
			FUNC6(j->cadence_t->ce);
			FUNC6(j->cadence_t);
			j->cadence_t = NULL;
		}
	}
	if (j->play_mode == -1 && j->rec_mode == -1)
		FUNC0(j);
	if (j->play_mode != -1 && j->dsp.low == 0x20)
		FUNC1(j);
	if (j->rec_mode != -1 && j->dsp.low == 0x20)
		FUNC3(j);
}