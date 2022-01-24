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
struct dlm_rcom {int dummy; } ;
struct dlm_mhandle {int dummy; } ;
struct dlm_ls {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dlm_mhandle*) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_rcom*) ; 

__attribute__((used)) static void FUNC2(struct dlm_ls *ls, struct dlm_mhandle *mh,
		      struct dlm_rcom *rc)
{
	FUNC1(rc);
	FUNC0(mh);
}