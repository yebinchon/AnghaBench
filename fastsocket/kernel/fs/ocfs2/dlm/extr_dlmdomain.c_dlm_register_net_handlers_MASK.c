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
struct dlm_query_join_request {int dummy; } ;
struct dlm_cancel_join {int dummy; } ;
struct dlm_assert_joined {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_ASSERT_JOINED_MSG ; 
 int /*<<< orphan*/  DLM_CANCEL_JOIN_MSG ; 
 int /*<<< orphan*/  DLM_MOD_KEY ; 
 int /*<<< orphan*/  DLM_QUERY_JOIN_MSG ; 
 int /*<<< orphan*/  dlm_assert_joined_handler ; 
 int /*<<< orphan*/  dlm_cancel_join_handler ; 
 int /*<<< orphan*/  dlm_join_handlers ; 
 int /*<<< orphan*/  dlm_query_join_handler ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(void)
{
	int status = 0;

	status = FUNC1(DLM_QUERY_JOIN_MSG, DLM_MOD_KEY,
					sizeof(struct dlm_query_join_request),
					dlm_query_join_handler,
					NULL, NULL, &dlm_join_handlers);
	if (status)
		goto bail;

	status = FUNC1(DLM_ASSERT_JOINED_MSG, DLM_MOD_KEY,
					sizeof(struct dlm_assert_joined),
					dlm_assert_joined_handler,
					NULL, NULL, &dlm_join_handlers);
	if (status)
		goto bail;

	status = FUNC1(DLM_CANCEL_JOIN_MSG, DLM_MOD_KEY,
					sizeof(struct dlm_cancel_join),
					dlm_cancel_join_handler,
					NULL, NULL, &dlm_join_handlers);

bail:
	if (status < 0)
		FUNC0();

	return status;
}