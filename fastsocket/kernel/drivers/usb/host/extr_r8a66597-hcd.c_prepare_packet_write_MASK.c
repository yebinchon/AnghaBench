#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct urb {scalar_t__ actual_length; int /*<<< orphan*/  pipe; } ;
struct r8a66597_td {int pipenum; TYPE_1__* pipe; struct urb* urb; } ;
struct r8a66597 {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  fifoctr; scalar_t__ pipetre; } ;

/* Variables and functions */
 int BCLR ; 
 int /*<<< orphan*/  BRDYSTS ; 
 int /*<<< orphan*/  CFIFOCTR ; 
 int /*<<< orphan*/  CFIFOSEL ; 
 int CURPIPE ; 
 int /*<<< orphan*/  DCPCFG ; 
 int FRDY ; 
 int ISEL ; 
 int /*<<< orphan*/  R8A66597_DIR ; 
 int /*<<< orphan*/  TRENB ; 
 int /*<<< orphan*/  FUNC0 (struct r8a66597*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct r8a66597*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct r8a66597*,struct urb*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct r8a66597*,struct r8a66597_td*) ; 
 int /*<<< orphan*/  FUNC4 (struct r8a66597*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct r8a66597*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct r8a66597*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct r8a66597*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct r8a66597*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct r8a66597*,TYPE_1__*,int) ; 
 int FUNC10 (struct r8a66597*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct r8a66597*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct r8a66597*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(struct r8a66597 *r8a66597,
				 struct r8a66597_td *td)
{
	u16 tmp;
	struct urb *urb = td->urb;

	if (FUNC14(urb->pipe)) {
		FUNC5(r8a66597, td->pipe);
		FUNC7(r8a66597, R8A66597_DIR, DCPCFG);
		FUNC8(r8a66597, ISEL, ISEL | CURPIPE, CFIFOSEL);
		FUNC11(r8a66597, CFIFOSEL, CURPIPE, 0);
		if (urb->actual_length == 0) {
			FUNC9(r8a66597, td->pipe, 1);
			FUNC12(r8a66597, BCLR, CFIFOCTR);
		}
	} else {
		if (urb->actual_length == 0)
			FUNC3(r8a66597, td);
		if (td->pipe->pipetre)
			FUNC6(r8a66597, TRENB, td->pipe->pipetre);
	}
	FUNC12(r8a66597, ~(1 << td->pipenum), BRDYSTS);

	FUNC0(r8a66597, td->pipe);
	tmp = FUNC10(r8a66597, td->pipe->fifoctr);
	if (FUNC13((tmp & FRDY) == 0))
		FUNC2(r8a66597, urb, td->pipenum);
	else
		FUNC1(r8a66597, td->pipenum);
	FUNC4(r8a66597, td->pipe);
}