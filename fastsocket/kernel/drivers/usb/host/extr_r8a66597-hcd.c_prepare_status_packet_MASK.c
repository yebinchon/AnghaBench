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
struct urb {int* setup_packet; } ;
struct r8a66597_td {int /*<<< orphan*/  pipe; struct urb* urb; } ;
struct r8a66597 {int dummy; } ;

/* Variables and functions */
 int BCLR ; 
 int BEMP0 ; 
 int /*<<< orphan*/  BEMPSTS ; 
 int BVAL ; 
 int /*<<< orphan*/  CFIFOCTR ; 
 int /*<<< orphan*/  CFIFOSEL ; 
 int CURPIPE ; 
 int /*<<< orphan*/  DCPCFG ; 
 int ISEL ; 
 int /*<<< orphan*/  R8A66597_DIR ; 
 int USB_ENDPOINT_DIR_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct r8a66597*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct r8a66597*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct r8a66597*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct r8a66597*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct r8a66597*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct r8a66597*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct r8a66597*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct r8a66597*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct r8a66597*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct r8a66597*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct r8a66597*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct r8a66597 *r8a66597,
				  struct r8a66597_td *td)
{
	struct urb *urb = td->urb;

	FUNC8(r8a66597, td->pipe, 1);
	FUNC4(r8a66597, td->pipe);

	if (urb->setup_packet[0] & USB_ENDPOINT_DIR_MASK) {
		FUNC6(r8a66597, R8A66597_DIR, DCPCFG);
		FUNC7(r8a66597, ISEL, ISEL | CURPIPE, CFIFOSEL);
		FUNC9(r8a66597, CFIFOSEL, CURPIPE, 0);
		FUNC10(r8a66597, ~BEMP0, BEMPSTS);
		FUNC10(r8a66597, BCLR | BVAL, CFIFOCTR);
		FUNC0(r8a66597, 0);
	} else {
		FUNC5(r8a66597, R8A66597_DIR, DCPCFG);
		FUNC7(r8a66597, 0, ISEL | CURPIPE, CFIFOSEL);
		FUNC9(r8a66597, CFIFOSEL, CURPIPE, 0);
		FUNC10(r8a66597, BCLR, CFIFOCTR);
		FUNC2(r8a66597, 0);
	}
	FUNC1(r8a66597, 0);
	FUNC3(r8a66597, td->pipe);
}