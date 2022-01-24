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
typedef  void* u64 ;
typedef  scalar_t__ u32 ;
struct sock {int dummy; } ;
struct ccid3_hc_rx_sock {scalar_t__ ccid3hcrx_rtt; scalar_t__ ccid3hcrx_x_recv; int ccid3hcrx_s; void* ccid3hcrx_bytes_recv; int /*<<< orphan*/  ccid3hcrx_tstamp_last_feedback; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ DCCP_FALLBACK_RTT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct ccid3_hc_rx_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,struct sock*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int,scalar_t__) ; 
 void* FUNC8 (void*,scalar_t__) ; 
 scalar_t__ FUNC9 (void*) ; 

__attribute__((used)) static u32 FUNC10(struct sock *sk)
{
	struct ccid3_hc_rx_sock *hcrx = FUNC2(sk);
	u32 x_recv, p, delta;
	u64 fval;

	if (hcrx->ccid3hcrx_rtt == 0) {
		FUNC1("No RTT estimate available, using fallback RTT\n");
		hcrx->ccid3hcrx_rtt = DCCP_FALLBACK_RTT;
	}

	delta = FUNC5(FUNC6(hcrx->ccid3hcrx_tstamp_last_feedback));
	x_recv = FUNC8(hcrx->ccid3hcrx_bytes_recv, delta);
	if (x_recv == 0) {		/* would also trigger divide-by-zero */
		FUNC1("X_recv==0\n");
		if ((x_recv = hcrx->ccid3hcrx_x_recv) == 0) {
			FUNC0("stored value of X_recv is zero");
			return ~0U;
		}
	}

	fval = FUNC7(hcrx->ccid3hcrx_s, hcrx->ccid3hcrx_rtt);
	fval = FUNC8(fval, x_recv);
	p = FUNC9(fval);

	FUNC3("%s(%p), receive rate=%u bytes/s, implied "
		       "loss rate=%u\n", FUNC4(sk), sk, x_recv, p);

	return p == 0 ? ~0U : FUNC7(1, p);
}