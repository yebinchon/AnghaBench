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
typedef  int u32 ;
struct TYPE_2__ {int rcv_tsval; int rcv_tsecr; } ;
struct tcp_sock {TYPE_1__ rx_opt; } ;
struct sock {int dummy; } ;
struct lp {int remote_hz; int flag; } ;
typedef  int s64 ;

/* Variables and functions */
 int HZ ; 
 int LP_RESOL ; 
 int LP_VALID_OWD ; 
 int LP_VALID_RHZ ; 
 struct lp* FUNC0 (struct sock*) ; 
 int FUNC1 (struct sock*) ; 
 struct tcp_sock* FUNC2 (struct sock*) ; 

__attribute__((used)) static u32 FUNC3(struct sock *sk)
{
	struct tcp_sock *tp = FUNC2(sk);
	struct lp *lp = FUNC0(sk);
	s64 owd = 0;

	lp->remote_hz = FUNC1(sk);

	if (lp->flag & LP_VALID_RHZ) {
		owd =
		    tp->rx_opt.rcv_tsval * (LP_RESOL / lp->remote_hz) -
		    tp->rx_opt.rcv_tsecr * (LP_RESOL / HZ);
		if (owd < 0)
			owd = -owd;
	}

	if (owd > 0)
		lp->flag |= LP_VALID_OWD;
	else
		lp->flag &= ~LP_VALID_OWD;

	return owd;
}