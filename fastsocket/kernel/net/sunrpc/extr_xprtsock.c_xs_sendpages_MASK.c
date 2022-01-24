#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct xdr_buf {unsigned int len; unsigned int page_len; TYPE_1__* tail; TYPE_1__* head; } ;
struct socket {int /*<<< orphan*/  flags; } ;
struct sockaddr {int dummy; } ;
struct TYPE_2__ {unsigned int iov_len; } ;

/* Variables and functions */
 int ENOTSOCK ; 
 int /*<<< orphan*/  SOCK_ASYNC_NOSPACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct socket*,struct sockaddr*,int,TYPE_1__*,unsigned int,int) ; 
 int FUNC3 (struct socket*,struct xdr_buf*,unsigned int,int,int) ; 

__attribute__((used)) static int FUNC4(struct socket *sock, struct sockaddr *addr, int addrlen, struct xdr_buf *xdr, unsigned int base, bool zerocopy)
{
	unsigned int remainder = xdr->len - base;
	int err, sent = 0;

	if (FUNC1(!sock))
		return -ENOTSOCK;

	FUNC0(SOCK_ASYNC_NOSPACE, &sock->flags);
	if (base != 0) {
		addr = NULL;
		addrlen = 0;
	}

	if (base < xdr->head[0].iov_len || addr != NULL) {
		unsigned int len = xdr->head[0].iov_len - base;
		remainder -= len;
		err = FUNC2(sock, addr, addrlen, &xdr->head[0], base, remainder != 0);
		if (remainder == 0 || err != len)
			goto out;
		sent += err;
		base = 0;
	} else
		base -= xdr->head[0].iov_len;

	if (base < xdr->page_len) {
		unsigned int len = xdr->page_len - base;
		remainder -= len;
		err = FUNC3(sock, xdr, base, remainder != 0, zerocopy);
		if (remainder == 0 || err != len)
			goto out;
		sent += err;
		base = 0;
	} else
		base -= xdr->page_len;

	if (base >= xdr->tail[0].iov_len)
		return sent;
	err = FUNC2(sock, NULL, 0, &xdr->tail[0], base, 0);
out:
	if (sent == 0)
		return err;
	if (err > 0)
		sent += err;
	return sent;
}