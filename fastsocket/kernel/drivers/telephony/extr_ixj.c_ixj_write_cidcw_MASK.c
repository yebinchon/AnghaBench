#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {int /*<<< orphan*/  name; int /*<<< orphan*/  number; int /*<<< orphan*/  min; int /*<<< orphan*/  hour; int /*<<< orphan*/  day; int /*<<< orphan*/  month; } ;
struct TYPE_20__ {scalar_t__ cidcw_ack; scalar_t__ cidplay; } ;
struct TYPE_19__ {int low; } ;
struct TYPE_23__ {int fskz; int fskphase; int fskcnt; int fskdcnt; int /*<<< orphan*/  board; TYPE_3__ cid_send; TYPE_2__ flags; int /*<<< orphan*/  write_q; scalar_t__ cid_play_flag; scalar_t__ cidcw_wait; int /*<<< orphan*/  busyflags; scalar_t__ tone_state; scalar_t__ cidcnt; scalar_t__ cidsize; TYPE_1__ dsp; } ;
struct TYPE_22__ {int tone_index; int gain0; scalar_t__ freq1; scalar_t__ gain1; int /*<<< orphan*/  freq0; } ;
typedef  TYPE_4__ IXJ_TONE ;
typedef  TYPE_5__ IXJ ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int hertz ; 
 int /*<<< orphan*/  hz2130 ; 
 scalar_t__ hz2750 ; 
 int /*<<< orphan*/  hz440 ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (int,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (int,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,char) ; 
 int FUNC10 (TYPE_5__*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*) ; 
 int ixjdebug ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ) ; 
 char FUNC16 (char*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC18 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC20(IXJ *j)
{
	IXJ_TONE ti;

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

	FUNC1(j);

	j->flags.cidcw_ack = 0;

	ti.tone_index = 23;
	ti.gain0 = 1;
	ti.freq0 = hz440;
	ti.gain1 = 0;
	ti.freq1 = 0;
	FUNC2(j, &ti);

	FUNC8(1500, j);
	FUNC7(32, j);
	if(ixjdebug & 0x0200) {
		FUNC12("IXJ cidcw phone%d first tone start at %ld\n", j->board, jiffies);
	}
	FUNC4(j, 23);

	FUNC0(j->board, &j->busyflags);
	while(j->tone_state)
		FUNC13(1);
	while(FUNC17(j->board, (void *)&j->busyflags) != 0)
		FUNC13(1);
	if(ixjdebug & 0x0200) {
		FUNC12("IXJ cidcw phone%d first tone end at %ld\n", j->board, jiffies);
	}

	ti.tone_index = 24;
	ti.gain0 = 1;
	ti.freq0 = hz2130;
	ti.gain1 = 0;
	ti.freq1 = hz2750;
	FUNC2(j, &ti);

	FUNC7(10, j);
	FUNC8(600, j);
	if(ixjdebug & 0x0200) {
		FUNC12("IXJ cidcw phone%d second tone start at %ld\n", j->board, jiffies);
	}
	FUNC4(j, 24);

	FUNC0(j->board, &j->busyflags);
	while(j->tone_state)
		FUNC13(1);
	while(FUNC17(j->board, (void *)&j->busyflags) != 0)
		FUNC13(1);
	if(ixjdebug & 0x0200) {
		FUNC12("IXJ cidcw phone%d sent second tone at %ld\n", j->board, jiffies);
	}

	j->cidcw_wait = jiffies + ((50 * hertz) / 100);

	FUNC0(j->board, &j->busyflags);
	while(!j->flags.cidcw_ack && FUNC18(jiffies, j->cidcw_wait))
		FUNC13(1);
	while(FUNC17(j->board, (void *)&j->busyflags) != 0)
		FUNC13(1);
	j->cidcw_wait = 0;
	if(!j->flags.cidcw_ack) {
		if(ixjdebug & 0x0200) {
			FUNC12("IXJ cidcw phone%d did not receive ACK from display %ld\n", j->board, jiffies);
		}
		FUNC5(j);
		if(j->cid_play_flag) {
			FUNC19(&j->write_q);	/* Wake any blocked readers */
		}
		return;
	} else {
		FUNC6(j);
	}
	j->flags.cidcw_ack = 0;
	FUNC15(sdmf1, j->cid_send.month);
	FUNC14(sdmf1, j->cid_send.day);
	FUNC14(sdmf1, j->cid_send.hour);
	FUNC14(sdmf1, j->cid_send.min);
	FUNC15(sdmf2, j->cid_send.number);
	FUNC15(sdmf3, j->cid_send.name);

	len1 = FUNC16(sdmf1);
	len2 = FUNC16(sdmf2);
	len3 = FUNC16(sdmf3);
	mdmflen = len1 + len2 + len3 + 6;

	FUNC11(j);

	FUNC9(j, 0x80);
	checksum = 0x80;
	FUNC9(j, mdmflen);
	checksum = checksum + mdmflen;

	FUNC9(j, 0x01);
	checksum = checksum + 0x01;
	FUNC9(j, len1);
	checksum = checksum + len1;
	checksum = FUNC10(j, sdmf1, checksum);

	FUNC9(j, 0x02);
	checksum = checksum + 0x02;
	FUNC9(j, len2);
	checksum = checksum + len2;
	checksum = FUNC10(j, sdmf2, checksum);

	FUNC9(j, 0x07);
	checksum = checksum + 0x07;
	FUNC9(j, len3);
	checksum = checksum + len3;
	checksum = FUNC10(j, sdmf3, checksum);

	checksum %= 256;
	checksum ^= 0xFF;
	checksum += 1;

	FUNC9(j, (char) checksum);

	pad = j->fskdcnt % 240;
	if (pad) {
		pad = 240 - pad;
	}
	FUNC3(j, pad);
	if(ixjdebug & 0x0200) {
		FUNC12("IXJ cidcw phone%d sent FSK data at %ld\n", j->board, jiffies);
	}
}