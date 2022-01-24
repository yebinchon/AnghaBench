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
struct tcp_sock {scalar_t__ snd_cwnd; scalar_t__ snd_ssthresh; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {int icsk_ca_state; } ;

/* Variables and functions */
 int const FLAG_ECE ; 
 int TCPF_CA_CWR ; 
 int TCPF_CA_Recovery ; 
 TYPE_1__* FUNC0 (struct sock const*) ; 
 struct tcp_sock* FUNC1 (struct sock const*) ; 

__attribute__((used)) static inline int FUNC2(const struct sock *sk, const int flag)
{
	const struct tcp_sock *tp = FUNC1(sk);
	return (!(flag & FLAG_ECE) || tp->snd_cwnd < tp->snd_ssthresh) &&
		!((1 << FUNC0(sk)->icsk_ca_state) & (TCPF_CA_Recovery | TCPF_CA_CWR));
}