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
struct rxrpc_header {void* serial; int /*<<< orphan*/  serviceId; scalar_t__ _rsvd; int /*<<< orphan*/  securityIndex; scalar_t__ userStatus; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; scalar_t__ seq; scalar_t__ callNumber; int /*<<< orphan*/  cid; int /*<<< orphan*/  epoch; scalar_t__ __padding; void* min_level; void* nonce; void* version; } ;
struct rxrpc_connection {int security_nonce; TYPE_5__* trans; int /*<<< orphan*/  serial; int /*<<< orphan*/  service_id; int /*<<< orphan*/  security_ix; int /*<<< orphan*/  out_clientflag; int /*<<< orphan*/  cid; int /*<<< orphan*/  epoch; int /*<<< orphan*/  key; int /*<<< orphan*/  debug_id; } ;
struct rxkad_challenge {void* serial; int /*<<< orphan*/  serviceId; scalar_t__ _rsvd; int /*<<< orphan*/  securityIndex; scalar_t__ userStatus; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; scalar_t__ seq; scalar_t__ callNumber; int /*<<< orphan*/  cid; int /*<<< orphan*/  epoch; scalar_t__ __padding; void* min_level; void* nonce; void* version; } ;
struct msghdr {int msg_namelen; scalar_t__ msg_flags; scalar_t__ msg_controllen; int /*<<< orphan*/ * msg_control; int /*<<< orphan*/ * msg_name; } ;
struct kvec {int iov_len; struct rxrpc_header* iov_base; } ;
typedef  int /*<<< orphan*/  hdr ;
typedef  int /*<<< orphan*/  challenge ;
struct TYPE_10__ {TYPE_4__* local; TYPE_3__* peer; } ;
struct TYPE_9__ {int /*<<< orphan*/  socket; } ;
struct TYPE_6__ {int /*<<< orphan*/  sin; } ;
struct TYPE_7__ {TYPE_1__ transport; } ;
struct TYPE_8__ {TYPE_2__ srx; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  RXRPC_PACKET_TYPE_CHALLENGE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int*,int) ; 
 void* FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct msghdr*,struct kvec*,int,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 

__attribute__((used)) static int FUNC11(struct rxrpc_connection *conn)
{
	struct rxkad_challenge challenge;
	struct rxrpc_header hdr;
	struct msghdr msg;
	struct kvec iov[2];
	size_t len;
	int ret;

	FUNC1("{%d,%x}", conn->debug_id, FUNC8(conn->key));

	ret = FUNC9(conn->key);
	if (ret < 0)
		return ret;

	FUNC5(&conn->security_nonce, sizeof(conn->security_nonce));

	challenge.version	= FUNC6(2);
	challenge.nonce		= FUNC6(conn->security_nonce);
	challenge.min_level	= FUNC6(0);
	challenge.__padding	= 0;

	msg.msg_name	= &conn->trans->peer->srx.transport.sin;
	msg.msg_namelen	= sizeof(conn->trans->peer->srx.transport.sin);
	msg.msg_control	= NULL;
	msg.msg_controllen = 0;
	msg.msg_flags	= 0;

	hdr.epoch	= conn->epoch;
	hdr.cid		= conn->cid;
	hdr.callNumber	= 0;
	hdr.seq		= 0;
	hdr.type	= RXRPC_PACKET_TYPE_CHALLENGE;
	hdr.flags	= conn->out_clientflag;
	hdr.userStatus	= 0;
	hdr.securityIndex = conn->security_ix;
	hdr._rsvd	= 0;
	hdr.serviceId	= conn->service_id;

	iov[0].iov_base	= &hdr;
	iov[0].iov_len	= sizeof(hdr);
	iov[1].iov_base	= &challenge;
	iov[1].iov_len	= sizeof(challenge);

	len = iov[0].iov_len + iov[1].iov_len;

	hdr.serial = FUNC6(FUNC4(&conn->serial));
	FUNC3("Tx CHALLENGE %%%u", FUNC10(hdr.serial));

	ret = FUNC7(conn->trans->local->socket, &msg, iov, 2, len);
	if (ret < 0) {
		FUNC0("sendmsg failed: %d", ret);
		return -EAGAIN;
	}

	FUNC2(" = 0");
	return 0;
}