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
struct dlm_message {int dummy; } ;
struct dlm_ls {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dlm_ls*,struct dlm_message*) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_ls*,int,struct dlm_message*) ; 
 scalar_t__ FUNC2 (struct dlm_ls*) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_ls*) ; 

__attribute__((used)) static void FUNC4(struct dlm_ls *ls, struct dlm_message *ms,
				int nodeid)
{
	if (FUNC2(ls)) {
		FUNC1(ls, nodeid, ms);
	} else {
		FUNC3(ls);
		FUNC0(ls, ms);
	}
}