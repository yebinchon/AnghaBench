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
struct msghdr {int msg_flags; } ;
struct kvec {size_t iov_len; void* iov_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int MSG_DONTWAIT ; 
 int MSG_NOSIGNAL ; 
 int FUNC2 (struct socket*,struct msghdr*,struct kvec*,int,size_t) ; 

__attribute__((used)) static int
FUNC3(struct socket *sock, const char *buffer, const size_t length)
{
	struct msghdr	msg = {.msg_flags = MSG_DONTWAIT|MSG_NOSIGNAL};
	struct kvec	iov;
	int		len;

	FUNC0(7);
	iov.iov_base     = (void *)buffer;
	iov.iov_len      = length;

	len = FUNC2(sock, &msg, &iov, 1, (size_t)(length));

	FUNC1(7);
	return len;
}