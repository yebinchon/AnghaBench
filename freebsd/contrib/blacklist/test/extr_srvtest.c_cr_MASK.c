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
typedef  scalar_t__ uint8_t ;
struct sockaddr_storage {scalar_t__ ss_len; } ;
struct sockaddr_in6 {void* sin6_port; int /*<<< orphan*/  sin6_family; } ;
struct sockaddr_in {int sin_family; void* sin_port; } ;
typedef  int /*<<< orphan*/  ss ;
typedef  int socklen_t ;
typedef  void* in_port_t ;

/* Variables and functions */
 int AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  PF_INET6 ; 
 int SOCK_DGRAM ; 
 int FUNC0 (int,void const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 void* FUNC2 (void*) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr_storage*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(int af, int type, in_port_t p)
{
	int sfd;
	struct sockaddr_storage ss;
	socklen_t slen;
	sfd = FUNC5(af == AF_INET ? PF_INET : PF_INET6, type, 0);
	if (sfd == -1)
		FUNC1(1, "socket");

	p = FUNC2(p);
	FUNC4(&ss, 0, sizeof(ss));
	if (af == AF_INET) {
		struct sockaddr_in *s = (void *)&ss;
		s->sin_family = AF_INET;
		slen = sizeof(*s);
		s->sin_port = p;
	} else {
		struct sockaddr_in6 *s6 = (void *)&ss;
		s6->sin6_family = AF_INET6;
		slen = sizeof(*s6);
		s6->sin6_port = p;
	}
#ifdef HAVE_STRUCT_SOCKADDR_SA_LEN
	ss.ss_len = (uint8_t)slen;
#endif
     
	if (FUNC0(sfd, (const void *)&ss, slen) == -1)
		FUNC1(1, "bind");

	if (type != SOCK_DGRAM)
		if (FUNC3(sfd, 5) == -1)
			FUNC1(1, "listen");
	return sfd;
}