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
struct sockaddr_ll {scalar_t__ sll_ifindex; int /*<<< orphan*/  sll_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  ll ;

/* Variables and functions */
 int /*<<< orphan*/  AF_PACKET ; 
 int /*<<< orphan*/  ETH_P_ALL ; 
 int /*<<< orphan*/  PF_PACKET ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct sockaddr_ll*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(const char *ifname)
{
	struct sockaddr_ll ll;
	int monitor_sock;

	FUNC5(&ll, 0, sizeof(ll));
	ll.sll_family = AF_PACKET;
	ll.sll_ifindex = FUNC4(ifname);
	if (ll.sll_ifindex == 0) {
		FUNC2(stderr, "Monitor interface '%s' does not exist\n", ifname);
		return -1;
	}

	monitor_sock = FUNC6(PF_PACKET, SOCK_RAW, FUNC3(ETH_P_ALL));
	if (monitor_sock < 0) {
		FUNC2(stderr, "socket(PF_PACKET,SOCK_RAW): %s\n", FUNC7(errno));
		return -1;
	}

	if (FUNC0(monitor_sock, (struct sockaddr *) &ll, sizeof(ll)) < 0) {
		FUNC2(stderr, "bind(PACKET): %s\n", FUNC7(errno));
		FUNC1(monitor_sock);
		return -1;
	}

	return monitor_sock;
}