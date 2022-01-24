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
typedef  scalar_t__ u16 ;
struct urb {int /*<<< orphan*/  pipe; } ;
struct r8a66597 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct r8a66597*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct r8a66597*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct r8a66597*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct r8a66597 *r8a66597, struct urb *urb,
			    u16 pipenum)
{
	if (pipenum == 0 && FUNC4(urb->pipe))
		FUNC0(r8a66597, pipenum);
	else
		FUNC2(r8a66597, pipenum);

	if (!FUNC3(urb->pipe))
		FUNC1(r8a66597, pipenum);
}