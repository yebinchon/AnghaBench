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
struct tcp_sock {int fackets_out; int sacked_out; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tcp_sock*) ; 

__attribute__((used)) static inline int FUNC1(struct tcp_sock *tp)
{
	return FUNC0(tp) ? tp->fackets_out : tp->sacked_out + 1;
}