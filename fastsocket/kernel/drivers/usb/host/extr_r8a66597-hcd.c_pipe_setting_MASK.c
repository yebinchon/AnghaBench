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
struct urb {int /*<<< orphan*/  pipe; int /*<<< orphan*/  dev; } ;
struct r8a66597_td {scalar_t__ pipenum; TYPE_1__* pipe; struct urb* urb; } ;
struct r8a66597_pipe_info {int dummy; } ;
struct r8a66597 {int dummy; } ;
struct TYPE_5__ {struct r8a66597_pipe_info info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct r8a66597*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct r8a66597*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct r8a66597*,struct r8a66597_pipe_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct r8a66597*,TYPE_1__*,struct urb*) ; 
 int /*<<< orphan*/  FUNC4 (struct r8a66597*,TYPE_1__*,struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct r8a66597*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC11(struct r8a66597 *r8a66597, struct r8a66597_td *td)
{
	struct r8a66597_pipe_info *info;
	struct urb *urb = td->urb;

	if (td->pipenum > 0) {
		info = &td->pipe->info;
		FUNC0(r8a66597, 0);
		FUNC2(r8a66597, info);

		if (!FUNC6(urb->dev, FUNC8(urb->pipe),
				   FUNC9(urb->pipe)) &&
		    !FUNC7(urb->pipe)) {
			FUNC5(r8a66597, td->pipe, 0);
			FUNC4(r8a66597, td->pipe, urb, 0);
			FUNC1(r8a66597, td->pipe);
			FUNC10(urb->dev, FUNC8(urb->pipe),
				      FUNC9(urb->pipe), 1);
		}
		FUNC3(r8a66597, td->pipe, urb);
	}
}