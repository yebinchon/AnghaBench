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
struct dlm_rsb {int /*<<< orphan*/  res_convertqueue; int /*<<< orphan*/  res_grantqueue; } ;
struct dlm_lkb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dlm_rsb*,int /*<<< orphan*/ *,struct dlm_lkb*) ; 

__attribute__((used)) static void FUNC1(struct dlm_rsb *r, struct dlm_lkb *lkb)
{
	FUNC0(r, &r->res_grantqueue, lkb);
	FUNC0(r, &r->res_convertqueue, lkb);
}