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
struct sock {int dummy; } ;
struct ccid2_hc_tx_sock {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dccps_hc_tx_ccid; } ;

/* Variables and functions */
 struct ccid2_hc_tx_sock* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct sock const*) ; 

__attribute__((used)) static inline struct ccid2_hc_tx_sock *FUNC2(const struct sock *sk)
{
	return FUNC0(FUNC1(sk)->dccps_hc_tx_ccid);
}