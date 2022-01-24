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
struct tcp_sock {int /*<<< orphan*/  snd_cwnd_stamp; int /*<<< orphan*/  snd_cwnd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (struct tcp_sock*) ; 
 scalar_t__ FUNC2 (struct tcp_sock*) ; 
 int /*<<< orphan*/  tcp_time_stamp ; 

__attribute__((used)) static inline void FUNC3(struct tcp_sock *tp)
{
	tp->snd_cwnd = FUNC0(tp->snd_cwnd,
			   FUNC2(tp) + FUNC1(tp));
	tp->snd_cwnd_stamp = tcp_time_stamp;
}