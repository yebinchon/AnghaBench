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
struct urb {scalar_t__ actual_length; int /*<<< orphan*/  transfer_buffer_length; int /*<<< orphan*/  pipe; } ;
struct r8a66597_td {int pipenum; TYPE_1__* pipe; int /*<<< orphan*/  maxpacket; struct urb* urb; } ;
struct r8a66597 {int dummy; } ;
struct TYPE_4__ {scalar_t__ pipetre; scalar_t__ pipetrn; } ;

/* Variables and functions */
 int BCLR ; 
 scalar_t__ BRDYSTS ; 
 scalar_t__ CFIFOCTR ; 
 int /*<<< orphan*/  CFIFOSEL ; 
 int CURPIPE ; 
 int /*<<< orphan*/  DCPCFG ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ISEL ; 
 int /*<<< orphan*/  R8A66597_DIR ; 
 int TRCLR ; 
 int /*<<< orphan*/  TRENB ; 
 int /*<<< orphan*/  FUNC1 (struct r8a66597*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct r8a66597*,struct urb*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct r8a66597*,struct r8a66597_td*) ; 
 int /*<<< orphan*/  FUNC4 (struct r8a66597*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct r8a66597*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct r8a66597*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct r8a66597*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct r8a66597*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct r8a66597*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct r8a66597*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct r8a66597*,int,scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct r8a66597 *r8a66597,
				struct r8a66597_td *td)
{
	struct urb *urb = td->urb;

	if (FUNC12(urb->pipe)) {
		FUNC6(r8a66597, R8A66597_DIR, DCPCFG);
		FUNC8(r8a66597, 0, ISEL | CURPIPE, CFIFOSEL);
		FUNC10(r8a66597, CFIFOSEL, CURPIPE, 0);
		if (urb->actual_length == 0) {
			FUNC9(r8a66597, td->pipe, 1);
			FUNC11(r8a66597, BCLR, CFIFOCTR);
		}
		FUNC1(r8a66597, td->pipenum);
		FUNC4(r8a66597, td->pipe);
		FUNC2(r8a66597, urb, td->pipenum);
	} else {
		if (urb->actual_length == 0) {
			FUNC1(r8a66597, td->pipenum);
			FUNC3(r8a66597, td);
			FUNC5(r8a66597, td->pipe);
			FUNC11(r8a66597, ~(1 << td->pipenum), BRDYSTS);

			if (td->pipe->pipetre) {
				FUNC11(r8a66597, TRCLR,
						td->pipe->pipetre);
				FUNC11(r8a66597,
						FUNC0
						  (urb->transfer_buffer_length,
						   td->maxpacket),
						td->pipe->pipetrn);
				FUNC7(r8a66597, TRENB,
						td->pipe->pipetre);
			}

			FUNC4(r8a66597, td->pipe);
			FUNC2(r8a66597, urb, td->pipenum);
		}
	}
}