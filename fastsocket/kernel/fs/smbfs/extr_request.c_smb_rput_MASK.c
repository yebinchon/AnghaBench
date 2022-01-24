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
struct smb_request {int /*<<< orphan*/  rq_queue; int /*<<< orphan*/  rq_count; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct smb_request*) ; 

void FUNC3(struct smb_request *req)
{
	if (FUNC0(&req->rq_count)) {
		FUNC1(&req->rq_queue);
		FUNC2(req);
	}
}