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
struct socket {int dummy; } ;
struct msghdr {int /*<<< orphan*/ * member_0; } ;
struct kvec {char* iov_base; size_t iov_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct socket*,struct msghdr*,struct kvec*,int,size_t const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct socket *sock, char *buffer, const size_t buflen)
{
	struct msghdr		msg = {NULL,};
	struct kvec		iov;
	int			len;

	FUNC0(7);

	/* Receive a packet */
	iov.iov_base     = buffer;
	iov.iov_len      = (size_t)buflen;

	len = FUNC2(sock, &msg, &iov, 1, buflen, 0);

	if (len < 0)
		return -1;

	FUNC1(7);
	return len;
}