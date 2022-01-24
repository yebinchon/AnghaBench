#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ncp_server {TYPE_2__* ncp_sock; int /*<<< orphan*/  txbuf; } ;
struct ncp_request_reply {TYPE_1__* tx_iov; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_3__ {int /*<<< orphan*/  iov_base; int /*<<< orphan*/  iov_len; } ;

/* Variables and functions */
 scalar_t__ SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ncp_server*,struct ncp_request_reply*) ; 
 int /*<<< orphan*/  FUNC2 (struct ncp_server*,struct ncp_request_reply*) ; 

__attribute__((used)) static inline void FUNC3(struct ncp_server *server, struct ncp_request_reply *req)
{
	/* we copy the data so that we do not depend on the caller
	   staying alive */
	FUNC0(server->txbuf, req->tx_iov[1].iov_base, req->tx_iov[1].iov_len);
	req->tx_iov[1].iov_base = server->txbuf;

	if (server->ncp_sock->type == SOCK_STREAM)
		FUNC2(server, req);
	else
		FUNC1(server, req);
}