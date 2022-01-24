#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int /*<<< orphan*/  sin_port; } ;
struct sctp_ulpevent {struct sctp_association* asoc; } ;
struct TYPE_6__ {struct sockaddr_in v4; } ;
struct TYPE_5__ {int /*<<< orphan*/  port; TYPE_3__ primary_addr; } ;
struct sctp_association {TYPE_2__ peer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int*) ; 

__attribute__((used)) static void FUNC2(struct sctp_ulpevent *event, char *msgname,
				    int *addr_len)
{
	struct sockaddr_in *sin, *sinfrom;

	if (msgname) {
		struct sctp_association *asoc;

		asoc = event->asoc;
		FUNC1(msgname, addr_len);
		sin = (struct sockaddr_in *)msgname;
		sinfrom = &asoc->peer.primary_addr.v4;
		sin->sin_port = FUNC0(asoc->peer.port);
		sin->sin_addr.s_addr = sinfrom->sin_addr.s_addr;
	}
}