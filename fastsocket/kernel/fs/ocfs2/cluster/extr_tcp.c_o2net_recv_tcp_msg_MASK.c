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
struct msghdr {int msg_iovlen; int /*<<< orphan*/  msg_flags; struct iovec* msg_iov; } ;
struct kvec {size_t iov_len; void* iov_base; } ;
struct iovec {int dummy; } ;
typedef  int /*<<< orphan*/  mm_segment_t ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct socket*,struct msghdr*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct socket *sock, void *data, size_t len)
{
	int ret;
	mm_segment_t oldfs;
	struct kvec vec = {
		.iov_len = len,
		.iov_base = data,
	};
	struct msghdr msg = {
		.msg_iovlen = 1,
		.msg_iov = (struct iovec *)&vec,
       		.msg_flags = MSG_DONTWAIT,
	};

	oldfs = FUNC1();
	FUNC2(FUNC0());
	ret = FUNC3(sock, &msg, len, msg.msg_flags);
	FUNC2(oldfs);

	return ret;
}