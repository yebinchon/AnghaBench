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
struct ncp_server {int /*<<< orphan*/  rxbuf; } ;
struct ncp_request_reply {int result; scalar_t__ status; int /*<<< orphan*/  wq; int /*<<< orphan*/  datalen; int /*<<< orphan*/  reply_buf; } ;

/* Variables and functions */
 scalar_t__ RQ_ABANDONED ; 
 scalar_t__ RQ_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ncp_request_reply*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC3(struct ncp_server *server, struct ncp_request_reply *req, int result)
{
	req->result = result;
	if (req->status != RQ_ABANDONED)
		FUNC0(req->reply_buf, server->rxbuf, req->datalen);
	req->status = RQ_DONE;
	FUNC2(&req->wq);
	FUNC1(req);
}