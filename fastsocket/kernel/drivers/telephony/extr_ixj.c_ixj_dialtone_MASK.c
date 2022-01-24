#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int low; } ;
struct TYPE_8__ {int dialtone; scalar_t__ busytone; scalar_t__ ringback; } ;
struct TYPE_10__ {TYPE_2__ dsp; TYPE_1__ flags; } ;
typedef  TYPE_3__ IXJ ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int,TYPE_3__*) ; 

__attribute__((used)) static void FUNC3(IXJ *j)
{
	j->flags.ringback = 0;
	j->flags.dialtone = 1;
	j->flags.busytone = 0;
	if (j->dsp.low == 0x20) {
		return;
	} else {
		FUNC2(0xFFFF, j);
		FUNC1(0x0000, j);
		FUNC0(j, 25);
	}
}