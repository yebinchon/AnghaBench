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
struct urb {int /*<<< orphan*/  pipe; int /*<<< orphan*/  setup_packet; } ;

/* Variables and functions */
 scalar_t__ PIPE_CONTROL ; 
 scalar_t__ FUNC0 (struct urb*) ; 
 scalar_t__ FUNC1 (struct urb*) ; 
 scalar_t__ FUNC2 (struct urb*) ; 
 scalar_t__ FUNC3 (struct urb*) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10(struct urb *urb)
{
	if (!urb || !urb->setup_packet)
		return;

	if (FUNC8(urb->pipe) != PIPE_CONTROL)
		return;

	if (FUNC0(urb))
		/* tweak clear_halt */
		 FUNC4(urb);

	else if (FUNC3(urb))
		/* tweak set_interface */
		FUNC7(urb);

	else if (FUNC2(urb))
		/* tweak set_configuration */
		FUNC6(urb);

	else if (FUNC1(urb))
		FUNC5(urb);
	else
		FUNC9("no need to tweak\n");
}