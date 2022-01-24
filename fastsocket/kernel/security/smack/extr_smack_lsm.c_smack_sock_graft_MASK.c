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
struct socket_smack {int /*<<< orphan*/  smk_out; int /*<<< orphan*/  smk_in; } ;
struct socket {int dummy; } ;
struct sock {scalar_t__ sk_family; struct socket_smack* sk_security; } ;

/* Variables and functions */
 scalar_t__ PF_INET ; 
 scalar_t__ PF_INET6 ; 
 int /*<<< orphan*/  FUNC0 () ; 

__attribute__((used)) static void FUNC1(struct sock *sk, struct socket *parent)
{
	struct socket_smack *ssp;

	if (sk == NULL ||
	    (sk->sk_family != PF_INET && sk->sk_family != PF_INET6))
		return;

	ssp = sk->sk_security;
	ssp->smk_in = ssp->smk_out = FUNC0();
	/* cssp->smk_packet is already set in smack_inet_csk_clone() */
}