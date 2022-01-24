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
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct bictcp*) ; 
 scalar_t__ hystart ; 
 struct bictcp* FUNC2 (struct sock*) ; 
 scalar_t__ initial_ssthresh ; 
 TYPE_1__* FUNC3 (struct sock*) ; 

__attribute__((used)) static void FUNC4(struct sock *sk)
{
	struct bictcp *ca = FUNC2(sk);

	FUNC1(ca);
	ca->loss_cwnd = 0;

	if (hystart)
		FUNC0(sk);

	if (!hystart && initial_ssthresh)
		FUNC3(sk)->snd_ssthresh = initial_ssthresh;
}