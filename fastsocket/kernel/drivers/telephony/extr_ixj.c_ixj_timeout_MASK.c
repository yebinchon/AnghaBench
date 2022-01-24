#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_36__   TYPE_7__ ;
typedef  struct TYPE_35__   TYPE_6__ ;
typedef  struct TYPE_34__   TYPE_5__ ;
typedef  struct TYPE_33__   TYPE_4__ ;
typedef  struct TYPE_32__   TYPE_3__ ;
typedef  struct TYPE_31__   TYPE_2__ ;
typedef  struct TYPE_30__   TYPE_1__ ;

/* Type definitions */
struct TYPE_33__ {int hookstate; scalar_t__ dtmf_ready; } ;
struct TYPE_35__ {scalar_t__ bytes; TYPE_4__ bits; } ;
struct TYPE_34__ {int firstring; int cidring; int cidsent; scalar_t__ pstn_present; int /*<<< orphan*/  pstncheck; int /*<<< orphan*/  ringing; scalar_t__ cringing; scalar_t__ ringback; scalar_t__ busytone; scalar_t__ dialtone; } ;
struct TYPE_32__ {int high; int low; } ;
struct TYPE_31__ {int low; } ;
struct TYPE_36__ {int board; int hookstate; int tone_state; int m_hook; int tone_on_time; int tone_off_time; int ring_cadence_t; int ring_cadence; int proc_load; scalar_t__ cardtype; int /*<<< orphan*/  busyflags; int /*<<< orphan*/  poll_q; TYPE_6__ ex; TYPE_5__ flags; scalar_t__ dtmf_rp; scalar_t__ dtmf_wp; TYPE_3__ ssr; TYPE_2__ dsp; TYPE_1__* cadence_f; void* ring_cadence_jif; scalar_t__ fskdcnt; int /*<<< orphan*/  tone_index; void* tone_start_jif; int /*<<< orphan*/  timerchecks; int /*<<< orphan*/  DSPWrite; scalar_t__ DSPbase; } ;
struct TYPE_30__ {int state; int on1; int off1; int on2; int off2; int on3; int off3; scalar_t__ en_filter; void* off3dot; void* on3dot; void* off2dot; void* on2dot; void* off1dot; void* on1dot; scalar_t__ enable; } ;
typedef  TYPE_7__ IXJ ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_7__*) ; 
 scalar_t__ FUNC1 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*) ; 
 scalar_t__ PLD_SLIC_STATE_ACTIVE ; 
 scalar_t__ PLD_SLIC_STATE_OHT ; 
 int /*<<< orphan*/  POLL_IN ; 
 scalar_t__ QTI_LINEJACK ; 
 int /*<<< orphan*/  SIG_HOOKSTATE ; 
 scalar_t__ FUNC3 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,TYPE_7__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 
 int hertz ; 
 int /*<<< orphan*/  FUNC7 (int,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_7__*) ; 
 int FUNC12 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_7__*) ; 
 int ixjdebug ; 
 void* jiffies ; 
 int /*<<< orphan*/  FUNC24 (char*,int,void*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_7__*) ; 
 scalar_t__ FUNC26 (int,void*) ; 
 scalar_t__ FUNC27 (void*,void*) ; 
 scalar_t__ FUNC28 (void*,void*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC30(unsigned long ptr)
{
	int board;
	unsigned long jifon;
	IXJ *j = (IXJ *)ptr;
	board = j->board;

	if (j->DSPbase && FUNC5(&j->DSPWrite) == 0 && FUNC26(board, (void *)&j->busyflags) == 0) {
		FUNC14(j->timerchecks);
		j->hookstate = FUNC12(j);
		if (j->tone_state) {
			if (!(j->hookstate)) {
				FUNC10(j);
				if (j->m_hook) {
					j->m_hook = 0;
					j->ex.bits.hookstate = 1;
					FUNC13(j, SIG_HOOKSTATE, POLL_IN);
				}
				FUNC6(board, &j->busyflags);
				FUNC8(j);
				return;
			}
			if (j->tone_state == 1)
				jifon = ((hertz * j->tone_on_time) * 25 / 100000);
			else
				jifon = ((hertz * j->tone_on_time) * 25 / 100000) + ((hertz * j->tone_off_time) * 25 / 100000);
			if (FUNC28(jiffies, j->tone_start_jif + jifon)) {
				if (j->tone_state == 1) {
					FUNC15(j, j->tone_index);
					if (j->dsp.low == 0x20) {
						FUNC6(board, &j->busyflags);
						FUNC8(j);
						return;
					}
				} else {
					FUNC15(j, 0);
					if (j->dsp.low == 0x20) {
						FUNC6(board, &j->busyflags);
						FUNC8(j);
						return;
					}
				}
			} else {
				FUNC22(j);
				if (j->flags.dialtone) {
					FUNC11(j);
				}
				if (j->flags.busytone) {
					FUNC9(j);
					if (j->dsp.low == 0x20) {
						FUNC6(board, &j->busyflags);
						FUNC8(j);
						return;
					}
				}
				if (j->flags.ringback) {
					FUNC21(j);
					if (j->dsp.low == 0x20) {
						FUNC6(board, &j->busyflags);
						FUNC8(j);
						return;
					}
				}
				if (!j->tone_state) {
					FUNC10(j);
				}
			}
		}
		if (!(j->tone_state && j->dsp.low == 0x20)) {
			if (FUNC0(j)) {
				FUNC18(j);
			}
			if (FUNC1(j)) {
				FUNC23(j);
			}
		}
		if (j->flags.cringing) {
			if (j->hookstate & 1) {
				j->flags.cringing = 0;
				FUNC19(j);
			} else if(j->cadence_f[5].enable && ((!j->cadence_f[5].en_filter) || (j->cadence_f[5].en_filter && j->flags.firstring))) {
				switch(j->cadence_f[5].state) {
					case 0:
						j->cadence_f[5].on1dot = jiffies + (long)((j->cadence_f[5].on1 * (hertz * 100) / 10000));
						if (FUNC28(jiffies, j->cadence_f[5].on1dot)) {
							if(ixjdebug & 0x0004) {
								FUNC24("Ringing cadence state = %d - %ld\n", j->cadence_f[5].state, jiffies);
							}
							FUNC20(j);
						}
						j->cadence_f[5].state = 1;
						break;
					case 1:
						if (FUNC27(jiffies, j->cadence_f[5].on1dot)) {
							j->cadence_f[5].off1dot = jiffies + (long)((j->cadence_f[5].off1 * (hertz * 100) / 10000));
							if(ixjdebug & 0x0004) {
								FUNC24("Ringing cadence state = %d - %ld\n", j->cadence_f[5].state, jiffies);
							}
							FUNC19(j);
							j->cadence_f[5].state = 2;
						}
						break;
					case 2:
						if (FUNC27(jiffies, j->cadence_f[5].off1dot)) {
							if(ixjdebug & 0x0004) {
								FUNC24("Ringing cadence state = %d - %ld\n", j->cadence_f[5].state, jiffies);
							}
							FUNC20(j);
							if (j->cadence_f[5].on2) {
								j->cadence_f[5].on2dot = jiffies + (long)((j->cadence_f[5].on2 * (hertz * 100) / 10000));
								j->cadence_f[5].state = 3;
							} else {
								j->cadence_f[5].state = 7;
							}
						}
						break;
					case 3:
						if (FUNC27(jiffies, j->cadence_f[5].on2dot)) {
							if(ixjdebug & 0x0004) {
								FUNC24("Ringing cadence state = %d - %ld\n", j->cadence_f[5].state, jiffies);
							}
							FUNC19(j);
							if (j->cadence_f[5].off2) {
								j->cadence_f[5].off2dot = jiffies + (long)((j->cadence_f[5].off2 * (hertz * 100) / 10000));
								j->cadence_f[5].state = 4;
							} else {
								j->cadence_f[5].state = 7;
							}
						}
						break;
					case 4:
						if (FUNC27(jiffies, j->cadence_f[5].off2dot)) {
							if(ixjdebug & 0x0004) {
								FUNC24("Ringing cadence state = %d - %ld\n", j->cadence_f[5].state, jiffies);
							}
							FUNC20(j);
							if (j->cadence_f[5].on3) {
								j->cadence_f[5].on3dot = jiffies + (long)((j->cadence_f[5].on3 * (hertz * 100) / 10000));
								j->cadence_f[5].state = 5;
							} else {
								j->cadence_f[5].state = 7;
							}
						}
						break;
					case 5:
						if (FUNC27(jiffies, j->cadence_f[5].on3dot)) {
							if(ixjdebug & 0x0004) {
								FUNC24("Ringing cadence state = %d - %ld\n", j->cadence_f[5].state, jiffies);
							}
							FUNC19(j);
							if (j->cadence_f[5].off3) {
								j->cadence_f[5].off3dot = jiffies + (long)((j->cadence_f[5].off3 * (hertz * 100) / 10000));
								j->cadence_f[5].state = 6;
							} else {
								j->cadence_f[5].state = 7;
							}
						}
						break;
					case 6:
						if (FUNC27(jiffies, j->cadence_f[5].off3dot)) {
							if(ixjdebug & 0x0004) {
								FUNC24("Ringing cadence state = %d - %ld\n", j->cadence_f[5].state, jiffies);
							}
							j->cadence_f[5].state = 7;
						}
						break;
					case 7:
						if(ixjdebug & 0x0004) {
							FUNC24("Ringing cadence state = %d - %ld\n", j->cadence_f[5].state, jiffies);
						}
						j->flags.cidring = 1;
						j->cadence_f[5].state = 0;
						break;
				}
				if (j->flags.cidring && !j->flags.cidsent) {
					j->flags.cidsent = 1;
					if(j->fskdcnt) {
						FUNC4(PLD_SLIC_STATE_OHT, j);
						FUNC16(j);
					}
					j->flags.cidring = 0;
				}
				FUNC6(board, &j->busyflags);
				FUNC8(j);
				return;
			} else {
				if (FUNC27(jiffies, j->ring_cadence_jif + (hertz / 2))) {
					if (j->flags.cidring && !j->flags.cidsent) {
						j->flags.cidsent = 1;
						if(j->fskdcnt) {
							FUNC4(PLD_SLIC_STATE_OHT, j);
							FUNC16(j);
						}
						j->flags.cidring = 0;
					}
					j->ring_cadence_t--;
					if (j->ring_cadence_t == -1)
						j->ring_cadence_t = 15;
					j->ring_cadence_jif = jiffies;

					if (j->ring_cadence & 1 << j->ring_cadence_t) {
						if(j->flags.cidsent && j->cadence_f[5].en_filter)
							j->flags.firstring = 1;
						else
							FUNC20(j);
					} else {
						FUNC19(j);
						if(!j->flags.cidsent)
							j->flags.cidring = 1;
					}
				}
				FUNC6(board, &j->busyflags);
				FUNC8(j);
				return;
			}
		}
		if (!j->flags.ringing) {
			if (j->hookstate) { /* & 1) { */
				if (j->dsp.low != 0x20 &&
				    FUNC3(j) != PLD_SLIC_STATE_ACTIVE) {
					FUNC4(PLD_SLIC_STATE_ACTIVE, j);
				}
				FUNC2(j);
				FUNC25(j);
				FUNC7(0x511B, j);
				j->proc_load = j->ssr.high << 8 | j->ssr.low;
				if (!j->m_hook && (j->hookstate & 1)) {
					j->m_hook = j->ex.bits.hookstate = 1;
					FUNC13(j, SIG_HOOKSTATE, POLL_IN);
				}
			} else {
				if (j->ex.bits.dtmf_ready) {
					j->dtmf_wp = j->dtmf_rp = j->ex.bits.dtmf_ready = 0;
				}
				if (j->m_hook) {
					j->m_hook = 0;
					j->ex.bits.hookstate = 1;
					FUNC13(j, SIG_HOOKSTATE, POLL_IN);
				}
			}
		}
		if (j->cardtype == QTI_LINEJACK && !j->flags.pstncheck && j->flags.pstn_present) {
			FUNC17(j);
		}
		if (j->ex.bytes) {
			FUNC29(&j->poll_q);	/* Wake any blocked selects */
		}
		FUNC6(board, &j->busyflags);
	}
	FUNC8(j);
}