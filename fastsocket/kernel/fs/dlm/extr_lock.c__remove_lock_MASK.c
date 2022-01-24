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
struct dlm_lkb {int /*<<< orphan*/  lkb_grmode; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_LOCK_IV ; 
 int /*<<< orphan*/  FUNC0 (struct dlm_rsb*,struct dlm_lkb*) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_lkb*) ; 

__attribute__((used)) static void FUNC2(struct dlm_rsb *r, struct dlm_lkb *lkb)
{
	FUNC0(r, lkb);
	lkb->lkb_grmode = DLM_LOCK_IV;
	/* this unhold undoes the original ref from create_lkb()
	   so this leads to the lkb being freed */
	FUNC1(lkb);
}