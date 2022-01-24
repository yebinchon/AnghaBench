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
struct inet_sock {scalar_t__ rcv_saddr; } ;

/* Variables and functions */
 struct inet_sock* FUNC0 (struct sock const*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock const*) ; 

__attribute__((used)) static int FUNC2(const struct sock *sk1, const struct sock *sk2)
{
	struct inet_sock *inet1 = FUNC0(sk1), *inet2 = FUNC0(sk2);

	return 	(!FUNC1(sk2)  &&
		 (!inet1->rcv_saddr || !inet2->rcv_saddr ||
		   inet1->rcv_saddr == inet2->rcv_saddr));
}