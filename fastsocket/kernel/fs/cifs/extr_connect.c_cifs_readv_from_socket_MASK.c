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
struct msghdr {scalar_t__ msg_controllen; int /*<<< orphan*/ * msg_control; } ;
struct kvec {int dummy; } ;
struct TCP_Server_Info {scalar_t__ tcpStatus; int /*<<< orphan*/  ssocket; } ;

/* Variables and functions */
 scalar_t__ CifsExiting ; 
 scalar_t__ CifsNeedReconnect ; 
 int EAGAIN ; 
 int EINTR ; 
 int ENOMEM ; 
 int ERESTARTSYS ; 
 int ESHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct TCP_Server_Info*) ; 
 struct kvec* FUNC2 (struct TCP_Server_Info*,unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct msghdr*,struct kvec*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (struct kvec*,struct kvec*,unsigned int,int) ; 
 scalar_t__ FUNC5 (struct TCP_Server_Info*) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

int
FUNC7(struct TCP_Server_Info *server, struct kvec *iov_orig,
		       unsigned int nr_segs, unsigned int to_read)
{
	int length = 0;
	int total_read;
	unsigned int segs;
	struct msghdr smb_msg;
	struct kvec *iov;

	iov = FUNC2(server, nr_segs);
	if (!iov)
		return -ENOMEM;

	smb_msg.msg_control = NULL;
	smb_msg.msg_controllen = 0;

	for (total_read = 0; to_read; total_read += length, to_read -= length) {
		if (FUNC5(server)) {
			total_read = -EAGAIN;
			break;
		}

		segs = FUNC4(iov, iov_orig, nr_segs, total_read);

		length = FUNC3(server->ssocket, &smb_msg,
					iov, segs, to_read, 0);

		if (server->tcpStatus == CifsExiting) {
			total_read = -ESHUTDOWN;
			break;
		} else if (server->tcpStatus == CifsNeedReconnect) {
			FUNC1(server);
			total_read = -EAGAIN;
			break;
		} else if (length == -ERESTARTSYS ||
			   length == -EAGAIN ||
			   length == -EINTR) {
			/*
			 * Minimum sleep to prevent looping, allowing socket
			 * to clear and app threads to set tcpStatus
			 * CifsNeedReconnect if server hung.
			 */
			FUNC6(1000, 2000);
			length = 0;
			continue;
		} else if (length <= 0) {
			FUNC0(1, "Received no data or error: expecting %d "
				"got %d", to_read, length);
			FUNC1(server);
			total_read = -EAGAIN;
			break;
		}
	}
	return total_read;
}