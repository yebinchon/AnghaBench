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
struct dlm_rsb {int dummy; } ;
struct dlm_lkb {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dlm_rsb*,struct dlm_lkb*) ; 
 scalar_t__ FUNC1 (struct dlm_rsb*) ; 
 int FUNC2 (struct dlm_rsb*,struct dlm_lkb*) ; 

__attribute__((used)) static int FUNC3(struct dlm_rsb *r, struct dlm_lkb *lkb)
{
	int error;

	if (FUNC1(r))
		/* receive_cancel() calls do_cancel() on remote node */
		error = FUNC2(r, lkb);
	else
		error = FUNC0(r, lkb);

	return error;
}