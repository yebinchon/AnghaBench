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
struct dlm_mhandle {int dummy; } ;
struct dlm_message {int dummy; } ;
struct dlm_lkb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_MSG_LOOKUP ; 
 int /*<<< orphan*/  DLM_MSG_LOOKUP_REPLY ; 
 int FUNC0 (struct dlm_lkb*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct dlm_rsb*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct dlm_message**,struct dlm_mhandle**) ; 
 int FUNC2 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_lkb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_rsb*,struct dlm_lkb*,struct dlm_message*) ; 
 int FUNC5 (struct dlm_mhandle*,struct dlm_message*) ; 

__attribute__((used)) static int FUNC6(struct dlm_rsb *r, struct dlm_lkb *lkb)
{
	struct dlm_message *ms;
	struct dlm_mhandle *mh;
	int to_nodeid, error;

	to_nodeid = FUNC2(r);

	error = FUNC0(lkb, DLM_MSG_LOOKUP, to_nodeid);
	if (error)
		return error;

	error = FUNC1(r, NULL, to_nodeid, DLM_MSG_LOOKUP, &ms, &mh);
	if (error)
		goto fail;

	FUNC4(r, lkb, ms);

	error = FUNC5(mh, ms);
	if (error)
		goto fail;
	return 0;

 fail:
	FUNC3(lkb, DLM_MSG_LOOKUP_REPLY);
	return error;
}