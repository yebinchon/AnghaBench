#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_9__ ;
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_10__ ;

/* Type definitions */
struct TYPE_26__ {int pots_pstn; scalar_t__ pcmciasct; scalar_t__ pcmciascp; int /*<<< orphan*/  cringing; int /*<<< orphan*/  ringing; } ;
struct TYPE_24__ {int hookstate; int flash; } ;
struct TYPE_25__ {TYPE_7__ bits; } ;
struct TYPE_22__ {int /*<<< orphan*/  det; int /*<<< orphan*/  state; int /*<<< orphan*/  potspstn; } ;
struct TYPE_23__ {TYPE_5__ bits; } ;
struct TYPE_20__ {int /*<<< orphan*/  det; } ;
struct TYPE_21__ {TYPE_3__ pcib; int /*<<< orphan*/  byte; } ;
struct TYPE_18__ {int /*<<< orphan*/  gpio3read; } ;
struct TYPE_19__ {TYPE_1__ bits; } ;
struct TYPE_17__ {int cardtype; int p_hook; int r_hook; scalar_t__ port; scalar_t__ daa_mode; TYPE_9__ flags; void* flash_end; TYPE_8__ ex; TYPE_6__ pld_slicr; TYPE_4__ pld_scrr; int /*<<< orphan*/  XILINXbase; int /*<<< orphan*/  board; void* checkwait; int /*<<< orphan*/  writers; int /*<<< orphan*/  readers; TYPE_2__ gpio; } ;
typedef  TYPE_10__ IXJ ;

/* Variables and functions */
 int /*<<< orphan*/  PLD_SLIC_STATE_ACTIVE ; 
 int /*<<< orphan*/  PLD_SLIC_STATE_RINGING ; 
 int /*<<< orphan*/  PLD_SLIC_STATE_STANDBY ; 
 int /*<<< orphan*/  POLL_IN ; 
 scalar_t__ PORT_HANDSET ; 
 scalar_t__ PORT_PSTN ; 
 scalar_t__ PORT_SPEAKER ; 
#define  QTI_LINEJACK 132 
#define  QTI_PHONECARD 131 
#define  QTI_PHONEJACK 130 
#define  QTI_PHONEJACK_LITE 129 
#define  QTI_PHONEJACK_PCI 128 
 int /*<<< orphan*/  SIG_FLASH ; 
 int /*<<< orphan*/  SIG_HOOKSTATE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_10__*) ; 
 scalar_t__ SOP_PU_CONVERSATION ; 
 int hertz ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_10__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_10__*) ; 
 void* jiffies ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int,void*) ; 
 scalar_t__ FUNC9 (void*,void*) ; 

__attribute__((used)) static int FUNC10(IXJ *j)
{
	int fOffHook = 0;

	switch (j->cardtype) {
	case QTI_PHONEJACK:
		FUNC3(j);
		fOffHook = j->gpio.bits.gpio3read ? 1 : 0;
		break;
	case QTI_LINEJACK:
	case QTI_PHONEJACK_LITE:
	case QTI_PHONEJACK_PCI:
		FUNC0(j);
		if(j->cardtype == QTI_LINEJACK && j->flags.pots_pstn == 1 && (j->readers || j->writers)) {
			fOffHook = j->pld_slicr.bits.potspstn ? 1 : 0;
			if(fOffHook != j->p_hook) {
				if(!j->checkwait) {
					j->checkwait = jiffies;
				} 
				if(FUNC9(jiffies, j->checkwait + 2)) {
					fOffHook ^= 1;
				} else {
					j->checkwait = 0;
				}
				j->p_hook = fOffHook;
	 			FUNC8("IXJ : /dev/phone%d pots-pstn hookstate check %d at %ld\n", j->board, fOffHook, jiffies);
			}
		} else {
			if (j->pld_slicr.bits.state == PLD_SLIC_STATE_ACTIVE ||
			    j->pld_slicr.bits.state == PLD_SLIC_STATE_STANDBY) {
				if (j->flags.ringing || j->flags.cringing) {
					if (!FUNC1()) {
						FUNC7(20);
					}
					FUNC0(j);
					if (j->pld_slicr.bits.state == PLD_SLIC_STATE_RINGING) {
						FUNC6(j);
					}
				}
				if (j->cardtype == QTI_PHONEJACK_PCI) {
					j->pld_scrr.byte = FUNC2(j->XILINXbase);
					fOffHook = j->pld_scrr.pcib.det ? 1 : 0;
				} else
					fOffHook = j->pld_slicr.bits.det ? 1 : 0;
			}
		}
		break;
	case QTI_PHONECARD:
		fOffHook = FUNC5(j);
		break;
	}
	if (j->r_hook != fOffHook) {
		j->r_hook = fOffHook;
		if (j->port == PORT_SPEAKER || j->port == PORT_HANDSET) { // || (j->port == PORT_PSTN && j->flags.pots_pstn == 0)) {
			j->ex.bits.hookstate = 1;
			FUNC4(j, SIG_HOOKSTATE, POLL_IN);
		} else if (!fOffHook) {
			j->flash_end = jiffies + ((60 * hertz) / 100);
		}
	}
	if (fOffHook) {
		if(FUNC9(jiffies, j->flash_end)) {
			j->ex.bits.flash = 1;
			j->flash_end = 0;
			FUNC4(j, SIG_FLASH, POLL_IN);
		}
	} else {
		if(FUNC9(jiffies, j->flash_end)) {
			fOffHook = 1;
		}
	}

	if (j->port == PORT_PSTN && j->daa_mode == SOP_PU_CONVERSATION)
		fOffHook |= 2;

	if (j->port == PORT_SPEAKER) {
		if(j->cardtype == QTI_PHONECARD) {
			if(j->flags.pcmciascp && j->flags.pcmciasct) {
				fOffHook |= 2;
			}
		} else {
			fOffHook |= 2;
		}
	}

	if (j->port == PORT_HANDSET)
		fOffHook |= 2;

	return fOffHook;
}