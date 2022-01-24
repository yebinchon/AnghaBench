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
struct afs_call_type {int /*<<< orphan*/  name; } ;
struct afs_call {size_t request_size; size_t reply_max; int /*<<< orphan*/  rx_queue; int /*<<< orphan*/  waitq; void* buffer; void* request; struct afs_call_type const* type; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (char*,struct afs_call*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct afs_call*) ; 
 int /*<<< orphan*/  afs_outstanding_calls ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (size_t,int /*<<< orphan*/ ) ; 
 struct afs_call* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

struct afs_call *FUNC8(const struct afs_call_type *type,
				     size_t request_size, size_t reply_size)
{
	struct afs_call *call;

	call = FUNC6(sizeof(*call), GFP_NOFS);
	if (!call)
		goto nomem_call;

	FUNC0("CALL %p{%s} [%d]",
	       call, type->name, FUNC3(&afs_outstanding_calls));
	FUNC2(&afs_outstanding_calls);

	call->type = type;
	call->request_size = request_size;
	call->reply_max = reply_size;

	if (request_size) {
		call->request = FUNC5(request_size, GFP_NOFS);
		if (!call->request)
			goto nomem_free;
	}

	if (reply_size) {
		call->buffer = FUNC5(reply_size, GFP_NOFS);
		if (!call->buffer)
			goto nomem_free;
	}

	FUNC4(&call->waitq);
	FUNC7(&call->rx_queue);
	return call;

nomem_free:
	FUNC1(call);
nomem_call:
	return NULL;
}