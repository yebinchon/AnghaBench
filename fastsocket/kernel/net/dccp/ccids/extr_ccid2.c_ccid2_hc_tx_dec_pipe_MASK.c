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
struct ccid2_hc_tx_sock {scalar_t__ ccid2hctx_pipe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 struct ccid2_hc_tx_sock* FUNC2 (struct sock*) ; 

__attribute__((used)) static void FUNC3(struct sock *sk)
{
	struct ccid2_hc_tx_sock *hctx = FUNC2(sk);

	if (hctx->ccid2hctx_pipe == 0)
		FUNC0("pipe == 0");
	else
		hctx->ccid2hctx_pipe--;

	if (hctx->ccid2hctx_pipe == 0)
		FUNC1(sk);
}