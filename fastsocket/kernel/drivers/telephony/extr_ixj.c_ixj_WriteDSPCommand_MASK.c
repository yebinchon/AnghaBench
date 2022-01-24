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
struct TYPE_9__ {unsigned short high; unsigned short low; } ;
struct TYPE_7__ {int low; int high; } ;
struct TYPE_8__ {int /*<<< orphan*/  DSPWrite; int /*<<< orphan*/  board; scalar_t__ DSPbase; TYPE_1__ ssr; int /*<<< orphan*/  iscontrolreadyfail; int /*<<< orphan*/  iscontrolready; } ;
typedef  TYPE_2__ IXJ ;
typedef  TYPE_3__ BYTES ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int hertz ; 
 void* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC7 (unsigned short,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,unsigned short) ; 
 scalar_t__ FUNC9 (int,unsigned long) ; 

__attribute__((used)) static int FUNC10(unsigned short cmd, IXJ *j)
{
	BYTES bytes;
	unsigned long jif;

	FUNC2(&j->DSPWrite);
	if(FUNC3(&j->DSPWrite) > 1) {
		FUNC8("IXJ %d DSP write overlap attempting command 0x%4.4x\n", j->board, cmd);
		return -1;
	}
	bytes.high = (cmd & 0xFF00) >> 8;
	bytes.low = cmd & 0x00FF;
	jif = jiffies + ((60 * hertz) / 100);
	while (!FUNC0(j)) {
		FUNC5(j->iscontrolready);
		if (FUNC9(jiffies, jif)) {
			FUNC5(j->iscontrolreadyfail);
			FUNC1(&j->DSPWrite);
			if(FUNC3(&j->DSPWrite) > 0) {
				FUNC8("IXJ %d DSP overlaped command 0x%4.4x during control ready failure.\n", j->board, cmd);
				while(FUNC3(&j->DSPWrite) > 0) {
					FUNC1(&j->DSPWrite);
				}
			}
			return -1;
		}
	}
	FUNC7(bytes.low, j->DSPbase + 6);
	FUNC7(bytes.high, j->DSPbase + 7);

	if (FUNC6(j)) {
		j->ssr.low = 0xFF;
		j->ssr.high = 0xFF;
		FUNC1(&j->DSPWrite);
		if(FUNC3(&j->DSPWrite) > 0) {
			FUNC8("IXJ %d DSP overlaped command 0x%4.4x during status wait failure.\n", j->board, cmd);
			while(FUNC3(&j->DSPWrite) > 0) {
				FUNC1(&j->DSPWrite);
			}
		}
		return -1;
	}
/* Read Software Status Register */
	j->ssr.low = FUNC4(j->DSPbase + 2);
	j->ssr.high = FUNC4(j->DSPbase + 3);
	FUNC1(&j->DSPWrite);
	if(FUNC3(&j->DSPWrite) > 0) {
		FUNC8("IXJ %d DSP overlaped command 0x%4.4x\n", j->board, cmd);
		while(FUNC3(&j->DSPWrite) > 0) {
			FUNC1(&j->DSPWrite);
		}
	}
	return 0;
}