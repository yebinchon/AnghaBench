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
struct nfs_callback_data {scalar_t__ users; int /*<<< orphan*/ * task; int /*<<< orphan*/ * rqst; int /*<<< orphan*/ * serv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct nfs_callback_data* nfs_callback_info ; 
 int /*<<< orphan*/  nfs_callback_mutex ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(int minorversion)
{
	struct nfs_callback_data *cb_info = &nfs_callback_info[minorversion];

	FUNC1(&nfs_callback_mutex);
	cb_info->users--;
	if (cb_info->users == 0 && cb_info->task != NULL) {
		FUNC0(cb_info->task);
		FUNC3(cb_info->rqst);
		cb_info->serv = NULL;
		cb_info->rqst = NULL;
		cb_info->task = NULL;
	}
	FUNC2(&nfs_callback_mutex);
}