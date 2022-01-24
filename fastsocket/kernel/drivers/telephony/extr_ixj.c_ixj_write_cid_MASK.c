#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  name; int /*<<< orphan*/  number; int /*<<< orphan*/  min; int /*<<< orphan*/  hour; int /*<<< orphan*/  day; int /*<<< orphan*/  month; } ;
struct TYPE_14__ {scalar_t__ cidplay; } ;
struct TYPE_13__ {int low; } ;
struct TYPE_16__ {int fskz; int fskphase; int fskcnt; int fskdcnt; TYPE_3__ cid_send; scalar_t__ cidcnt; scalar_t__ cidsize; TYPE_2__ flags; TYPE_1__ dsp; } ;
typedef  TYPE_4__ IXJ ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int FUNC5 (TYPE_4__*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 char FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10(IXJ *j)
{
	char sdmf1[50];
	char sdmf2[50];
	char sdmf3[80];
	char mdmflen, len1, len2, len3;
	int pad;

	int checksum = 0;

	if (j->dsp.low == 0x20 || j->flags.cidplay)
		return;

	j->fskz = j->fskphase = j->fskcnt = j->fskdcnt = 0;
	j->cidsize = j->cidcnt = 0;

	FUNC0(j);

	FUNC8(sdmf1, j->cid_send.month);
	FUNC7(sdmf1, j->cid_send.day);
	FUNC7(sdmf1, j->cid_send.hour);
	FUNC7(sdmf1, j->cid_send.min);
	FUNC8(sdmf2, j->cid_send.number);
	FUNC8(sdmf3, j->cid_send.name);

	len1 = FUNC9(sdmf1);
	len2 = FUNC9(sdmf2);
	len3 = FUNC9(sdmf3);
	mdmflen = len1 + len2 + len3 + 6;

	while(1){
		FUNC4(j);

		FUNC3(j, 0x80);
		checksum = 0x80;
		FUNC3(j, mdmflen);
		checksum = checksum + mdmflen;

		FUNC3(j, 0x01);
		checksum = checksum + 0x01;
		FUNC3(j, len1);
		checksum = checksum + len1;
		checksum = FUNC5(j, sdmf1, checksum);
		if(FUNC1(j) & 1)
			break;

		FUNC3(j, 0x02);
		checksum = checksum + 0x02;
		FUNC3(j, len2);
		checksum = checksum + len2;
		checksum = FUNC5(j, sdmf2, checksum);
		if(FUNC1(j) & 1)
			break;

		FUNC3(j, 0x07);
		checksum = checksum + 0x07;
		FUNC3(j, len3);
		checksum = checksum + len3;
		checksum = FUNC5(j, sdmf3, checksum);
		if(FUNC1(j) & 1)
			break;

		checksum %= 256;
		checksum ^= 0xFF;
		checksum += 1;

		FUNC3(j, (char) checksum);

		pad = j->fskdcnt % 240;
		if (pad) {
			pad = 240 - pad;
		}
		FUNC2(j, pad);
		break;
	}

	FUNC6(j);
}