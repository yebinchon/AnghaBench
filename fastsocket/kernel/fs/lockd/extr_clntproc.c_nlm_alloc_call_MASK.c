#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  fl; } ;
struct TYPE_8__ {TYPE_3__ lock; } ;
struct TYPE_5__ {int /*<<< orphan*/  fl; } ;
struct TYPE_6__ {TYPE_1__ lock; } ;
struct nlm_rqst {struct nlm_host* a_host; TYPE_4__ a_res; TYPE_2__ a_args; int /*<<< orphan*/  a_count; } ;
struct nlm_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 struct nlm_rqst* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nlm_host*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 () ; 

struct nlm_rqst *FUNC7(struct nlm_host *host)
{
	struct nlm_rqst	*call;

	for(;;) {
		call = FUNC1(sizeof(*call), GFP_KERNEL);
		if (call != NULL) {
			FUNC0(&call->a_count, 1);
			FUNC2(&call->a_args.lock.fl);
			FUNC2(&call->a_res.lock.fl);
			call->a_host = host;
			return call;
		}
		if (FUNC6())
			break;
		FUNC4("nlm_alloc_call: failed, waiting for memory\n");
		FUNC5(5*HZ);
	}
	FUNC3(host);
	return NULL;
}