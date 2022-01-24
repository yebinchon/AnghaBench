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
typedef  scalar_t__ u32 ;
struct sock {int dummy; } ;
struct inet_connection_sock {scalar_t__ icsk_ca_state; } ;
struct htcp {scalar_t__ minRTT; scalar_t__ maxRTT; } ;

/* Variables and functions */
 scalar_t__ TCP_CA_Open ; 
 struct inet_connection_sock* FUNC0 (struct sock*) ; 
 struct htcp* FUNC1 (struct sock*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static inline void FUNC3(struct sock *sk, u32 srtt)
{
	const struct inet_connection_sock *icsk = FUNC0(sk);
	struct htcp *ca = FUNC1(sk);

	/* keep track of minimum RTT seen so far, minRTT is zero at first */
	if (ca->minRTT > srtt || !ca->minRTT)
		ca->minRTT = srtt;

	/* max RTT */
	if (icsk->icsk_ca_state == TCP_CA_Open) {
		if (ca->maxRTT < ca->minRTT)
			ca->maxRTT = ca->minRTT;
		if (ca->maxRTT < srtt
		    && srtt <= ca->maxRTT + FUNC2(20))
			ca->maxRTT = srtt;
	}
}