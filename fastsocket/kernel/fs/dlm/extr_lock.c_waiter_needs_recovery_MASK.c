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
struct dlm_ls {int dummy; } ;
struct dlm_lkb {scalar_t__ lkb_nodeid; int /*<<< orphan*/  lkb_resource; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct dlm_ls*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_ls*) ; 

__attribute__((used)) static int FUNC3(struct dlm_ls *ls, struct dlm_lkb *lkb)
{
	if (FUNC1(ls, lkb->lkb_nodeid))
		return 1;

	if (!FUNC2(ls))
		return 0;

	if (FUNC0(lkb->lkb_resource) != lkb->lkb_nodeid)
		return 1;

	return 0;
}