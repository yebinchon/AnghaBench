#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct request_sock {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dreq_featneg; } ;
struct TYPE_3__ {int /*<<< orphan*/ * pktopts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (struct request_sock*) ; 
 TYPE_1__* FUNC2 (struct request_sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct request_sock *req)
{
	FUNC0(&FUNC1(req)->dreq_featneg);
	if (FUNC2(req)->pktopts != NULL)
		FUNC3(FUNC2(req)->pktopts);
}