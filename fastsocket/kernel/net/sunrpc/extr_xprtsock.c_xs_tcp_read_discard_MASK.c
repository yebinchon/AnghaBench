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
struct xdr_skb_reader {size_t count; size_t offset; } ;
struct sock_xprt {size_t tcp_reclen; size_t tcp_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct sock_xprt*) ; 

__attribute__((used)) static inline void FUNC2(struct sock_xprt *transport, struct xdr_skb_reader *desc)
{
	size_t len;

	len = transport->tcp_reclen - transport->tcp_offset;
	if (len > desc->count)
		len = desc->count;
	desc->count -= len;
	desc->offset += len;
	transport->tcp_offset += len;
	FUNC0("RPC:       discarded %Zu bytes\n", len);
	FUNC1(transport);
}