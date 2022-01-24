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
struct ccid2_hc_tx_sock {scalar_t__ ccid2hctx_rto; int /*<<< orphan*/  ccid2hctx_rtotimer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ccid2_hc_tx_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct sock *sk)
{
	struct ccid2_hc_tx_sock *hctx = FUNC1(sk);

	FUNC2("setting RTO timeout=%ld\n", hctx->ccid2hctx_rto);

	FUNC0(FUNC4(&hctx->ccid2hctx_rtotimer));
	FUNC3(sk, &hctx->ccid2hctx_rtotimer,
		       jiffies + hctx->ccid2hctx_rto);
}