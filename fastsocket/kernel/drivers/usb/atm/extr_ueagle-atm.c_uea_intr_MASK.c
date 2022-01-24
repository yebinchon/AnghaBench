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
struct urb {int status; struct intr_pkt* transfer_buffer; struct uea_softc* context; } ;
struct uea_softc {int /*<<< orphan*/  urb_int; int /*<<< orphan*/  (* dispatch_cmv ) (struct uea_softc*,struct intr_pkt*) ;int /*<<< orphan*/  (* schedule_load_page ) (struct uea_softc*,struct intr_pkt*) ;scalar_t__ booting; } ;
struct intr_pkt {int bType; int /*<<< orphan*/  wInterrupt; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct uea_softc*) ; 
#define  INT_INCOMINGCMV 129 
#define  INT_LOADSWAPPAGE 128 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uea_softc*,struct intr_pkt*) ; 
 int /*<<< orphan*/  FUNC3 (struct uea_softc*,struct intr_pkt*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct urb *urb)
{
	struct uea_softc *sc = urb->context;
	struct intr_pkt *intr = urb->transfer_buffer;
	int status = urb->status;

	FUNC4(FUNC0(sc));

	if (FUNC6(status < 0)) {
		FUNC5(FUNC0(sc), "uea_intr() failed with %d\n",
		       status);
		return;
	}

	/* device-to-host interrupt */
	if (intr->bType != 0x08 || sc->booting) {
		FUNC5(FUNC0(sc), "wrong interrupt\n");
		goto resubmit;
	}

	switch (FUNC1(intr->wInterrupt)) {
	case INT_LOADSWAPPAGE:
		sc->schedule_load_page(sc, intr);
		break;

	case INT_INCOMINGCMV:
		sc->dispatch_cmv(sc, intr);
		break;

	default:
		FUNC5(FUNC0(sc), "unknown interrupt %u\n",
		       FUNC1(intr->wInterrupt));
	}

resubmit:
	FUNC7(sc->urb_int, GFP_ATOMIC);
}