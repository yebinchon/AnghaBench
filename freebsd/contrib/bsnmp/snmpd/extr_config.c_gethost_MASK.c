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
typedef  int u_char ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct addrinfo {scalar_t__ ai_addr; int /*<<< orphan*/  ai_flags; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; } ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AI_PASSIVE ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ *,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC3 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,...) ; 

__attribute__((used)) static void
FUNC6(const char *host, u_char *ip)
{
	struct addrinfo hints, *res;
	int error;
	struct sockaddr_in *sain;

	FUNC3(&hints, 0, sizeof(hints));
	hints.ai_family = AF_INET;
	hints.ai_socktype = SOCK_DGRAM;
	hints.ai_protocol = IPPROTO_UDP;
	hints.ai_flags = AI_PASSIVE;
	error = FUNC2(host, NULL, &hints, &res);
	if (error != 0)
		FUNC5("%s: %s", host, FUNC1(error));
	if (res == NULL)
		FUNC5("%s: unknown hostname", host);

	sain = (struct sockaddr_in *)(void *)res->ai_addr;
	sain->sin_addr.s_addr = FUNC4(sain->sin_addr.s_addr);
	ip[0] = sain->sin_addr.s_addr >> 24;
	ip[1] = sain->sin_addr.s_addr >> 16;
	ip[2] = sain->sin_addr.s_addr >>  8;
	ip[3] = sain->sin_addr.s_addr >>  0;

	FUNC0(res);
}