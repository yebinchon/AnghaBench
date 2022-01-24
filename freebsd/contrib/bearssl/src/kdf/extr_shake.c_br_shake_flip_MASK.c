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
struct TYPE_3__ {int dptr; int rate; int* dbuf; int /*<<< orphan*/  A; } ;
typedef  TYPE_1__ br_shake_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int) ; 

void
FUNC2(br_shake_context *sc)
{
	/*
	 * We apply padding and pre-XOR the value into the state. We
	 * set dptr to the end of the buffer, so that first call to
	 * shake_extract() will process the block.
	 */
	if ((sc->dptr + 1) == sc->rate) {
		sc->dbuf[sc->dptr ++] = 0x9F;
	} else {
		sc->dbuf[sc->dptr ++] = 0x1F;
		FUNC0(sc->dbuf + sc->dptr, 0x00, sc->rate - sc->dptr - 1);
		sc->dbuf[sc->rate - 1] = 0x80;
		sc->dptr = sc->rate;
	}
	FUNC1(sc->A, sc->dbuf, sc->rate);
}