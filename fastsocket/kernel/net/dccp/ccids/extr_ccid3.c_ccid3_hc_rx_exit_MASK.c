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
struct ccid3_hc_rx_sock {int /*<<< orphan*/  ccid3hcrx_li_hist; int /*<<< orphan*/  ccid3hcrx_hist; } ;

/* Variables and functions */
 int /*<<< orphan*/  TFRC_RSTATE_TERM ; 
 int /*<<< orphan*/  FUNC0 (struct sock*,int /*<<< orphan*/ ) ; 
 struct ccid3_hc_rx_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct sock *sk)
{
	struct ccid3_hc_rx_sock *hcrx = FUNC1(sk);

	FUNC0(sk, TFRC_RSTATE_TERM);

	FUNC3(&hcrx->ccid3hcrx_hist);
	FUNC2(&hcrx->ccid3hcrx_li_hist);
}