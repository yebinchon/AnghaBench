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
struct rme96 {int rcreg; scalar_t__ iobase; int /*<<< orphan*/  wcreg; } ;

/* Variables and functions */
 scalar_t__ RME96_IO_CONFIRM_REC_IRQ ; 
 scalar_t__ RME96_IO_CONTROL_REGISTER ; 
 int RME96_RCR_IRQ_2 ; 
 int /*<<< orphan*/  RME96_WCR_START_2 ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC2(struct rme96 *rme96)
{
	rme96->rcreg = FUNC0(rme96->iobase + RME96_IO_CONTROL_REGISTER);
	if (rme96->rcreg & RME96_RCR_IRQ_2) {
		FUNC1(0, rme96->iobase + RME96_IO_CONFIRM_REC_IRQ);
	}	
	rme96->wcreg &= ~RME96_WCR_START_2;
	FUNC1(rme96->wcreg, rme96->iobase + RME96_IO_CONTROL_REGISTER);
}