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
struct o2net_msg {scalar_t__ data_len; int /*<<< orphan*/  magic; void* status; void* sys_status; } ;
struct kvec {int iov_len; struct o2net_msg* iov_base; } ;
typedef  enum o2net_system_error { ____Placeholder_o2net_system_error } o2net_system_error ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int O2NET_ERR_MAX ; 
 int /*<<< orphan*/  O2NET_MSG_STATUS_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct o2net_msg*,char*,int) ; 
 int FUNC4 (struct socket*,struct kvec*,int,int) ; 

__attribute__((used)) static int FUNC5(struct socket *sock, struct o2net_msg *hdr,
				   enum o2net_system_error syserr, int err)
{
	struct kvec vec = {
		.iov_base = hdr,
		.iov_len = sizeof(struct o2net_msg),
	};

	FUNC0(syserr >= O2NET_ERR_MAX);

	/* leave other fields intact from the incoming message, msg_num
	 * in particular */
	hdr->sys_status = FUNC2(syserr);
	hdr->status = FUNC2(err);
	hdr->magic = FUNC1(O2NET_MSG_STATUS_MAGIC);  // twiddle the magic
	hdr->data_len = 0;

	FUNC3(hdr, "about to send status magic %d\n", err);
	/* hdr has been in host byteorder this whole time */
	return FUNC4(sock, &vec, 1, sizeof(struct o2net_msg));
}