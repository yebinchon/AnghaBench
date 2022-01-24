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
struct ccid2_hc_tx_sock {int ccid2hctx_seqbufc; int /*<<< orphan*/ * ccid2hctx_seqbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 struct ccid2_hc_tx_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct sock *sk)
{
	struct ccid2_hc_tx_sock *hctx = FUNC1(sk);
	int i;

	FUNC0(sk);

	for (i = 0; i < hctx->ccid2hctx_seqbufc; i++)
		FUNC2(hctx->ccid2hctx_seqbuf[i]);
	hctx->ccid2hctx_seqbufc = 0;
}