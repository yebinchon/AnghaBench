#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  pullup_pin; int /*<<< orphan*/  pullup_active_low; } ;
struct at91_udc {TYPE_1__ board; int /*<<< orphan*/  vbus; int /*<<< orphan*/  enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_MATRIX_USBPUCR ; 
 int /*<<< orphan*/  AT91_MATRIX_USBPUCR_PUON ; 
 int /*<<< orphan*/  AT91_UDP_ICR ; 
 int /*<<< orphan*/  AT91_UDP_IDR ; 
 int /*<<< orphan*/  AT91_UDP_RXRSM ; 
 int /*<<< orphan*/  AT91_UDP_TXVC ; 
 int /*<<< orphan*/  AT91_UDP_TXVC_PUON ; 
 int /*<<< orphan*/  AT91_UDP_TXVC_TXVDIS ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct at91_udc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct at91_udc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct at91_udc*) ; 
 int /*<<< orphan*/  FUNC6 (struct at91_udc*) ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 () ; 
 scalar_t__ FUNC10 () ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct at91_udc*) ; 

__attribute__((used)) static void FUNC14(struct at91_udc *udc, int is_on)
{
	int	active = !udc->board.pullup_active_low;

	if (!udc->enabled || !udc->vbus)
		is_on = 0;
	FUNC0("%sactive\n", is_on ? "" : "in");

	if (is_on) {
		FUNC6(udc);
		FUNC4(udc, AT91_UDP_ICR, AT91_UDP_RXRSM);
		FUNC4(udc, AT91_UDP_TXVC, 0);
		if (FUNC7())
			FUNC12(udc->board.pullup_pin, active);
		else if (FUNC8() || FUNC10() || FUNC11()) {
			u32	txvc = FUNC3(udc, AT91_UDP_TXVC);

			txvc |= AT91_UDP_TXVC_PUON;
			FUNC4(udc, AT91_UDP_TXVC, txvc);
		} else if (FUNC9()) {
			u32	usbpucr;

			usbpucr = FUNC1(AT91_MATRIX_USBPUCR);
			usbpucr |= AT91_MATRIX_USBPUCR_PUON;
			FUNC2(AT91_MATRIX_USBPUCR, usbpucr);
		}
	} else {
		FUNC13(udc);
		FUNC4(udc, AT91_UDP_IDR, AT91_UDP_RXRSM);
		FUNC4(udc, AT91_UDP_TXVC, AT91_UDP_TXVC_TXVDIS);
		if (FUNC7())
			FUNC12(udc->board.pullup_pin, !active);
		else if (FUNC8() || FUNC10() || FUNC11()) {
			u32	txvc = FUNC3(udc, AT91_UDP_TXVC);

			txvc &= ~AT91_UDP_TXVC_PUON;
			FUNC4(udc, AT91_UDP_TXVC, txvc);
		} else if (FUNC9()) {
			u32	usbpucr;

			usbpucr = FUNC1(AT91_MATRIX_USBPUCR);
			usbpucr &= ~AT91_MATRIX_USBPUCR_PUON;
			FUNC2(AT91_MATRIX_USBPUCR, usbpucr);
		}
		FUNC5(udc);
	}
}