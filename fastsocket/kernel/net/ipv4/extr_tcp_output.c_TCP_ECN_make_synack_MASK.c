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
struct tcphdr {int ece; } ;
struct request_sock {int dummy; } ;
struct TYPE_2__ {scalar_t__ ecn_ok; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct request_sock*) ; 

__attribute__((used)) static __inline__ void
FUNC1(struct request_sock *req, struct tcphdr *th)
{
	if (FUNC0(req)->ecn_ok)
		th->ece = 1;
}