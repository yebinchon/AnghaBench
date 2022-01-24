#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_9__ ;
typedef  struct TYPE_29__   TYPE_8__ ;
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_13__ ;
typedef  struct TYPE_20__   TYPE_12__ ;
typedef  struct TYPE_19__   TYPE_11__ ;
typedef  struct TYPE_18__   TYPE_10__ ;

/* Type definitions */
struct TYPE_28__ {scalar_t__ VDD_OK; } ;
struct TYPE_29__ {TYPE_7__ bitreg; } ;
struct TYPE_30__ {TYPE_8__ xr0; } ;
struct TYPE_26__ {int rly1; int rly3; scalar_t__ rly2; } ;
struct TYPE_27__ {int /*<<< orphan*/  byte; TYPE_5__ bits; } ;
struct TYPE_24__ {scalar_t__ daafsyncen; } ;
struct TYPE_25__ {int /*<<< orphan*/  byte; TYPE_3__ bits; } ;
struct TYPE_22__ {scalar_t__ potspstn; } ;
struct TYPE_23__ {TYPE_1__ bits; int /*<<< orphan*/  byte; } ;
struct TYPE_20__ {int pstncheck; int pstn_present; int pots_pstn; int pots_correct; } ;
struct TYPE_18__ {TYPE_9__ XOP; } ;
struct TYPE_19__ {TYPE_10__ XOP_REGS; } ;
struct TYPE_21__ {TYPE_12__ flags; scalar_t__ pstn_sleeptil; TYPE_11__ m_DAAShadowRegs; scalar_t__ XILINXbase; TYPE_6__ pld_slicw; TYPE_4__ pld_scrw; TYPE_2__ pld_slicr; } ;
typedef  TYPE_13__ IXJ ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,TYPE_13__*) ; 
 int /*<<< orphan*/  SOP_PU_CONVERSATION ; 
 int /*<<< orphan*/  SOP_PU_RESET ; 
 int /*<<< orphan*/  FUNC1 (TYPE_13__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_13__*,int /*<<< orphan*/ ) ; 
 int hertz ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC6(IXJ *j)
{
	j->flags.pstncheck = 1;	/* Testing */
	j->flags.pstn_present = 0; /* Assume the line is not there */

	FUNC1(j);	/*Clear DAA Interrupt flags */
	/* */
	/* Hold all relays in the normally de-energized position. */
	/* */

	j->pld_slicw.bits.rly1 = 0;
	j->pld_slicw.bits.rly2 = 0;
	j->pld_slicw.bits.rly3 = 0;
	FUNC5(j->pld_slicw.byte, j->XILINXbase + 0x01);
	j->pld_scrw.bits.daafsyncen = 0;	/* Turn off DAA Frame Sync */

	FUNC5(j->pld_scrw.byte, j->XILINXbase);
	j->pld_slicr.byte = FUNC3(j->XILINXbase + 0x01);
	if (j->pld_slicr.bits.potspstn) {
		j->flags.pots_pstn = 1;
		j->flags.pots_correct = 0;
		FUNC0(0x4, j);
	} else {
		j->flags.pots_pstn = 0;
		j->pld_slicw.bits.rly1 = 0;
		j->pld_slicw.bits.rly2 = 0;
		j->pld_slicw.bits.rly3 = 1;
		FUNC5(j->pld_slicw.byte, j->XILINXbase + 0x01);
		j->pld_scrw.bits.daafsyncen = 0;	/* Turn off DAA Frame Sync */

		FUNC5(j->pld_scrw.byte, j->XILINXbase);
		FUNC2(j, SOP_PU_CONVERSATION);
		FUNC4(1000);
		FUNC1(j);
		FUNC2(j, SOP_PU_RESET);
		if (j->m_DAAShadowRegs.XOP_REGS.XOP.xr0.bitreg.VDD_OK) {
			j->flags.pots_correct = 0;	/* Should not be line voltage on POTS port. */
			FUNC0(0x4, j);
			j->pld_slicw.bits.rly3 = 0;
			FUNC5(j->pld_slicw.byte, j->XILINXbase + 0x01);
		} else {
			j->flags.pots_correct = 1;
			FUNC0(0x8, j);
			j->pld_slicw.bits.rly1 = 1;
			j->pld_slicw.bits.rly2 = 0;
			j->pld_slicw.bits.rly3 = 0;
			FUNC5(j->pld_slicw.byte, j->XILINXbase + 0x01);
		}
	}
	j->pld_slicw.bits.rly3 = 0;
	FUNC5(j->pld_slicw.byte, j->XILINXbase + 0x01);
	FUNC2(j, SOP_PU_CONVERSATION);
	FUNC4(1000);
	FUNC1(j);
	FUNC2(j, SOP_PU_RESET);
	if (j->m_DAAShadowRegs.XOP_REGS.XOP.xr0.bitreg.VDD_OK) {
		j->pstn_sleeptil = jiffies + (hertz / 4);
		j->flags.pstn_present = 1;
	} else {
		j->flags.pstn_present = 0;
	}
	if (j->flags.pstn_present) {
		if (j->flags.pots_correct) {
			FUNC0(0xA, j);
		} else {
			FUNC0(0x6, j);
		}
	} else {
		if (j->flags.pots_correct) {
			FUNC0(0x9, j);
		} else {
			FUNC0(0x5, j);
		}
	}
	j->flags.pstncheck = 0;	/* Testing */
	return j->flags.pstn_present;
}