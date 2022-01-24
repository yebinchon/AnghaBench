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
struct sockaddr_storage {int dummy; } ;
typedef  int /*<<< orphan*/  ss ;
typedef  int socklen_t ;

/* Variables and functions */
 int SOCK_DGRAM ; 
 int FUNC0 (int,void*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6(int type, int sfd)
{
	struct sockaddr_storage ss;
	socklen_t alen = sizeof(ss);
	int afd;

	if (type != SOCK_DGRAM) {
		if ((afd = FUNC0(sfd, (void *)&ss, &alen)) == -1)
			FUNC2(1, "accept");
	} else
		afd = sfd;

	/* Create child process */
	switch (FUNC3()) {
	case -1:
		FUNC2(1, "fork");
	case 0:
		if (type == SOCK_DGRAM)
			FUNC5(afd);
		else
			FUNC4(afd);
		break;
	default:
		FUNC1(afd);
		break;
	}
}