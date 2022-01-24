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
struct westwood {scalar_t__ snd_una; int /*<<< orphan*/  bk; } ;
struct tcp_sock {scalar_t__ snd_una; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 struct westwood* FUNC0 (struct sock*) ; 
 struct tcp_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct westwood*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 

__attribute__((used)) static inline void FUNC4(struct sock *sk)
{
	const struct tcp_sock *tp = FUNC1(sk);
	struct westwood *w = FUNC0(sk);

	FUNC3(sk);

	w->bk += tp->snd_una - w->snd_una;
	w->snd_una = tp->snd_una;
	FUNC2(w);
}