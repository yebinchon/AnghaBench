#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ cidplay; } ;
struct TYPE_10__ {int low; } ;
struct TYPE_12__ {int fskz; int fskphase; int fskcnt; int fskdcnt; scalar_t__ port; scalar_t__ cidcnt; scalar_t__ cidsize; TYPE_2__ flags; TYPE_1__ dsp; } ;
typedef  TYPE_3__ IXJ ;

/* Variables and functions */
 int /*<<< orphan*/  PLD_SLIC_STATE_OHT ; 
 scalar_t__ PORT_POTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC5(IXJ *j, int msg)
{
	char mdmflen;
	int pad;

	int checksum = 0;

	if (j->dsp.low == 0x20 || j->flags.cidplay)
		return;

	j->fskz = j->fskphase = j->fskcnt = j->fskdcnt = 0;
	j->cidsize = j->cidcnt = 0;

	FUNC1(j);

	mdmflen = 3;

	if (j->port == PORT_POTS)
		FUNC0(PLD_SLIC_STATE_OHT, j);

	FUNC4(j);

	FUNC3(j, 0x82);
	checksum = 0x82;
	FUNC3(j, mdmflen);
	checksum = checksum + mdmflen;

	FUNC3(j, 0x0B);
	checksum = checksum + 0x0B;
	FUNC3(j, 1);
	checksum = checksum + 1;

	if(msg) {
		FUNC3(j, 0xFF);
		checksum = checksum + 0xFF;
	}
	else {
		FUNC3(j, 0x00);
		checksum = checksum + 0x00;
	}

	checksum %= 256;
	checksum ^= 0xFF;
	checksum += 1;

	FUNC3(j, (char) checksum);

	pad = j->fskdcnt % 240;
	if (pad) {
		pad = 240 - pad;
	}
	FUNC2(j, pad);
}