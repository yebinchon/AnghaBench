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
typedef  int /*<<< orphan*/  u32 ;
struct tipc_media_addr {int dummy; } ;
struct link_req {int /*<<< orphan*/  timer_intv; int /*<<< orphan*/  timer; struct bearer* bearer; int /*<<< orphan*/  dest; int /*<<< orphan*/  buf; } ;
struct bearer {int dummy; } ;
typedef  int /*<<< orphan*/  Handler ;

/* Variables and functions */
 int /*<<< orphan*/  DSC_REQ_MSG ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  TIPC_LINK_REQ_INIT ; 
 scalar_t__ disc_timeout ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct link_req*) ; 
 struct link_req* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct tipc_media_addr const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bearer*) ; 

struct link_req *FUNC6(struct bearer *b_ptr,
					 const struct tipc_media_addr *dest,
					 u32 dest_domain,
					 u32 req_links)
{
	struct link_req *req;

	req = FUNC3(sizeof(*req), GFP_ATOMIC);
	if (!req)
		return NULL;

	req->buf = FUNC5(DSC_REQ_MSG, req_links, dest_domain, b_ptr);
	if (!req->buf) {
		FUNC2(req);
		return NULL;
	}

	FUNC4(&req->dest, dest, sizeof(*dest));
	req->bearer = b_ptr;
	req->timer_intv = TIPC_LINK_REQ_INIT;
	FUNC0(&req->timer, (Handler)disc_timeout, (unsigned long)req);
	FUNC1(&req->timer, req->timer_intv);
	return req;
}