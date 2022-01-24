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
struct ncp_request_reply {int /*<<< orphan*/  status; int /*<<< orphan*/  refs; int /*<<< orphan*/  wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RQ_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ncp_request_reply* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct ncp_request_reply* FUNC3(void)
{
	struct ncp_request_reply *req;

	req = FUNC2(sizeof(struct ncp_request_reply), GFP_KERNEL);
	if (!req)
		return NULL;

	FUNC1(&req->wq);
	FUNC0(&req->refs, (1));
	req->status = RQ_IDLE;

	return req;
}