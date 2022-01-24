#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct rxrpc_header {int /*<<< orphan*/  serial; scalar_t__ _rsvd; scalar_t__ userStatus; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; scalar_t__ seq; int /*<<< orphan*/  epoch; } ;
struct rxrpc_connection {TYPE_5__* trans; int /*<<< orphan*/  serial; int /*<<< orphan*/  out_clientflag; int /*<<< orphan*/  epoch; } ;
struct rxkad_response {int /*<<< orphan*/  serial; scalar_t__ _rsvd; scalar_t__ userStatus; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; scalar_t__ seq; int /*<<< orphan*/  epoch; } ;
struct rxkad_key {int ticket_len; scalar_t__ ticket; } ;
struct msghdr {int msg_namelen; scalar_t__ msg_flags; scalar_t__ msg_controllen; int /*<<< orphan*/ * msg_control; int /*<<< orphan*/ * msg_name; } ;
struct kvec {int iov_len; struct rxrpc_header* iov_base; } ;
struct TYPE_10__ {TYPE_4__* local; TYPE_3__* peer; } ;
struct TYPE_9__ {int /*<<< orphan*/  socket; } ;
struct TYPE_6__ {int /*<<< orphan*/  sin; } ;
struct TYPE_7__ {TYPE_1__ transport; } ;
struct TYPE_8__ {TYPE_2__ srx; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  RXRPC_PACKET_TYPE_RESPONSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct msghdr*,struct kvec*,int,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct rxrpc_connection *conn,
			       struct rxrpc_header *hdr,
			       struct rxkad_response *resp,
			       const struct rxkad_key *s2)
{
	struct msghdr msg;
	struct kvec iov[3];
	size_t len;
	int ret;

	FUNC1("");

	msg.msg_name	= &conn->trans->peer->srx.transport.sin;
	msg.msg_namelen	= sizeof(conn->trans->peer->srx.transport.sin);
	msg.msg_control	= NULL;
	msg.msg_controllen = 0;
	msg.msg_flags	= 0;

	hdr->epoch	= conn->epoch;
	hdr->seq	= 0;
	hdr->type	= RXRPC_PACKET_TYPE_RESPONSE;
	hdr->flags	= conn->out_clientflag;
	hdr->userStatus	= 0;
	hdr->_rsvd	= 0;

	iov[0].iov_base	= hdr;
	iov[0].iov_len	= sizeof(*hdr);
	iov[1].iov_base	= resp;
	iov[1].iov_len	= sizeof(*resp);
	iov[2].iov_base	= (void *) s2->ticket;
	iov[2].iov_len	= s2->ticket_len;

	len = iov[0].iov_len + iov[1].iov_len + iov[2].iov_len;

	hdr->serial = FUNC5(FUNC4(&conn->serial));
	FUNC3("Tx RESPONSE %%%u", FUNC7(hdr->serial));

	ret = FUNC6(conn->trans->local->socket, &msg, iov, 3, len);
	if (ret < 0) {
		FUNC0("sendmsg failed: %d", ret);
		return -EAGAIN;
	}

	FUNC2(" = 0");
	return 0;
}