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
struct dlm_rsb {int /*<<< orphan*/  res_length; int /*<<< orphan*/  res_name; int /*<<< orphan*/  res_ls; } ;

/* Variables and functions */
 int FUNC0 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_rsb*) ; 

__attribute__((used)) static void FUNC5(struct dlm_rsb *r)
{
	int to_nodeid;

	if (FUNC2(r->res_ls))
		return;

	to_nodeid = FUNC0(r);
	if (to_nodeid != FUNC3())
		FUNC4(r);
	else
		FUNC1(r->res_ls, to_nodeid,
				     r->res_name, r->res_length);
}