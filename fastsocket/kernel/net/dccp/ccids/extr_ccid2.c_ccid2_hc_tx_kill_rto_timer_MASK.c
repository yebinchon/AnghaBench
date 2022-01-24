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
struct ccid2_hc_tx_sock {int /*<<< orphan*/  ccid2hctx_rtotimer; } ;

/* Variables and functions */
 struct ccid2_hc_tx_sock* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct sock *sk)
{
	struct ccid2_hc_tx_sock *hctx = FUNC0(sk);

	FUNC2(sk, &hctx->ccid2hctx_rtotimer);
	FUNC1("deleted RTO timer\n");
}