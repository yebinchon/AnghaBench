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
struct nlm_rqst {int /*<<< orphan*/  a_host; int /*<<< orphan*/  a_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nlm_rqst*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nlm_rqst*) ; 

void FUNC4(struct nlm_rqst *call)
{
	if (!FUNC0(&call->a_count))
		return;
	FUNC2(call->a_host);
	FUNC3(call);
	FUNC1(call);
}