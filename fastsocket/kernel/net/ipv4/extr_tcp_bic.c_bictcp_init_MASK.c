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
struct bictcp {scalar_t__ loss_cwnd; } ;
struct TYPE_2__ {scalar_t__ snd_ssthresh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bictcp*) ; 
 struct bictcp* FUNC1 (struct sock*) ; 
 scalar_t__ initial_ssthresh ; 
 TYPE_1__* FUNC2 (struct sock*) ; 

__attribute__((used)) static void FUNC3(struct sock *sk)
{
	struct bictcp *ca = FUNC1(sk);

	FUNC0(ca);
	ca->loss_cwnd = 0;

	if (initial_ssthresh)
		FUNC2(sk)->snd_ssthresh = initial_ssthresh;
}