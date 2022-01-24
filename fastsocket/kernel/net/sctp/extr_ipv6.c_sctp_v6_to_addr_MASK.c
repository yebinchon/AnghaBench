#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  sin6_addr; int /*<<< orphan*/  sin6_port; } ;
struct TYPE_3__ {int /*<<< orphan*/  sa_family; } ;
union sctp_addr {TYPE_2__ v6; TYPE_1__ sa; } ;
struct in6_addr {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct in6_addr*) ; 

__attribute__((used)) static void FUNC1(union sctp_addr *addr, struct in6_addr *saddr,
			      __be16 port)
{
	addr->sa.sa_family = AF_INET6;
	addr->v6.sin6_port = port;
	FUNC0(&addr->v6.sin6_addr, saddr);
}