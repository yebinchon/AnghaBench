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
struct sock {int dummy; } ;
struct net {int dummy; } ;
struct inet_hashinfo {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 struct sock* FUNC0 (struct net*,struct inet_hashinfo*,struct in6_addr const*,int /*<<< orphan*/  const,struct in6_addr const*,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const) ; 

struct sock *FUNC4(struct net *net, struct inet_hashinfo *hashinfo,
			  const struct in6_addr *saddr, const __be16 sport,
			  const struct in6_addr *daddr, const __be16 dport,
			  const int dif)
{
	struct sock *sk;

	FUNC1();
	sk = FUNC0(net, hashinfo, saddr, sport, daddr, FUNC3(dport), dif);
	FUNC2();

	return sk;
}