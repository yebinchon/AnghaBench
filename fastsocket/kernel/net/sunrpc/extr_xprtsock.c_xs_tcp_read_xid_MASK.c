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
struct xdr_skb_reader {int dummy; } ;
struct sock_xprt {int tcp_offset; int tcp_flags; int tcp_copied; int /*<<< orphan*/  tcp_xid; } ;

/* Variables and functions */
 int TCP_RCV_COPY_XID ; 
 int TCP_RCV_READ_CALLDIR ; 
 int TCP_RPC_REPLY ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (struct xdr_skb_reader*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct sock_xprt*) ; 

__attribute__((used)) static inline void FUNC4(struct sock_xprt *transport, struct xdr_skb_reader *desc)
{
	size_t len, used;
	char *p;

	len = sizeof(transport->tcp_xid) - transport->tcp_offset;
	FUNC0("RPC:       reading XID (%Zu bytes)\n", len);
	p = ((char *) &transport->tcp_xid) + transport->tcp_offset;
	used = FUNC2(desc, p, len);
	transport->tcp_offset += used;
	if (used != len)
		return;
	transport->tcp_flags &= ~TCP_RCV_COPY_XID;
	transport->tcp_flags |= TCP_RCV_READ_CALLDIR;
	transport->tcp_copied = 4;
	FUNC0("RPC:       reading %s XID %08x\n",
			(transport->tcp_flags & TCP_RPC_REPLY) ? "reply for"
							      : "request with",
			FUNC1(transport->tcp_xid));
	FUNC3(transport);
}