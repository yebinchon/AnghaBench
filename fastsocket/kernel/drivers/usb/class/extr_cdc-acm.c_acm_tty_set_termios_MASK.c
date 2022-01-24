#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usb_cdc_line_coding {int bCharFormat; int bParityType; int /*<<< orphan*/  bDataBits; scalar_t__ dwDTERate; } ;
struct tty_struct {struct ktermios* termios; struct acm* driver_data; } ;
struct ktermios {int c_cflag; } ;
struct TYPE_4__ {scalar_t__ dwDTERate; } ;
struct acm {int ctrlout; int clocal; TYPE_1__ line; } ;

/* Variables and functions */
 int ACM_CTRL_DTR ; 
 int /*<<< orphan*/  FUNC0 (struct acm*) ; 
 int CLOCAL ; 
 int CMSPAR ; 
 int CSIZE ; 
 int CSTOPB ; 
 int PARENB ; 
 int PARODD ; 
 int /*<<< orphan*/  FUNC1 (struct acm*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct acm*,TYPE_1__*) ; 
 int /*<<< orphan*/ * acm_tty_size ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (TYPE_1__*,struct usb_cdc_line_coding*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,struct usb_cdc_line_coding*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC9(struct tty_struct *tty,
						struct ktermios *termios_old)
{
	struct acm *acm = tty->driver_data;
	struct ktermios *termios = tty->termios;
	struct usb_cdc_line_coding newline;
	int newctrl = acm->ctrlout;

	if (!FUNC0(acm))
		return;

	newline.dwDTERate = FUNC3(FUNC8(tty));
	newline.bCharFormat = termios->c_cflag & CSTOPB ? 2 : 0;
	newline.bParityType = termios->c_cflag & PARENB ?
				(termios->c_cflag & PARODD ? 1 : 2) +
				(termios->c_cflag & CMSPAR ? 2 : 0) : 0;
	newline.bDataBits = acm_tty_size[(termios->c_cflag & CSIZE) >> 4];
	/* FIXME: Needs to clear unsupported bits in the termios */
	acm->clocal = ((termios->c_cflag & CLOCAL) != 0);

	if (!newline.dwDTERate) {
		newline.dwDTERate = acm->line.dwDTERate;
		newctrl &= ~ACM_CTRL_DTR;
	} else
		newctrl |=  ACM_CTRL_DTR;

	if (newctrl != acm->ctrlout)
		FUNC1(acm, acm->ctrlout = newctrl);

	if (FUNC6(&acm->line, &newline, sizeof newline)) {
		FUNC7(&acm->line, &newline, sizeof newline);
		FUNC4("set line: %d %d %d %d", FUNC5(newline.dwDTERate),
			newline.bCharFormat, newline.bParityType,
			newline.bDataBits);
		FUNC2(acm, &acm->line);
	}
}