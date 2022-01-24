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
typedef  int /*<<< orphan*/  u32 ;
struct sock {int dummy; } ;
struct inet_sock {int /*<<< orphan*/  dport; int /*<<< orphan*/  daddr; int /*<<< orphan*/  rcv_saddr; } ;

/* Variables and functions */
 struct inet_sock* FUNC0 (struct sock const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline u32 FUNC2(const struct sock *sk)
{
	const struct inet_sock *inet = FUNC0(sk);
	return FUNC1(inet->rcv_saddr, inet->daddr,
					  inet->dport);
}