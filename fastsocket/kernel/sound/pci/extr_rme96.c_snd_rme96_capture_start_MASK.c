#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct rme96 {scalar_t__ iobase; int /*<<< orphan*/  wcreg; } ;

/* Variables and functions */
 scalar_t__ RME96_IO_CONTROL_REGISTER ; 
 scalar_t__ RME96_IO_RESET_REC_POS ; 
 int /*<<< orphan*/  RME96_WCR_START_2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC1(struct rme96 *rme96,
			int from_pause)
{
	if (!from_pause) {
		FUNC0(0, rme96->iobase + RME96_IO_RESET_REC_POS);
	}

	rme96->wcreg |= RME96_WCR_START_2;
	FUNC0(rme96->wcreg, rme96->iobase + RME96_IO_CONTROL_REGISTER);
}