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
struct dlm_rsb {int res_nodeid; } ;

/* Variables and functions */
 int /*<<< orphan*/  RSB_NEW_MASTER ; 
 int /*<<< orphan*/  RSB_NEW_MASTER2 ; 
 int /*<<< orphan*/  FUNC0 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_rsb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_rsb*) ; 

__attribute__((used)) static void FUNC4(struct dlm_rsb *r, int nodeid)
{
	FUNC0(r);
	r->res_nodeid = nodeid;
	FUNC2(r);
	FUNC1(r, RSB_NEW_MASTER);
	FUNC1(r, RSB_NEW_MASTER2);
	FUNC3(r);
}