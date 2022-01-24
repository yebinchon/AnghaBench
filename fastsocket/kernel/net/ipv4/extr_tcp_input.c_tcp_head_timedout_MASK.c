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
struct tcp_sock {scalar_t__ packets_out; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 struct tcp_sock* FUNC0 (struct sock*) ; 
 scalar_t__ FUNC1 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 

__attribute__((used)) static inline int FUNC3(struct sock *sk)
{
	struct tcp_sock *tp = FUNC0(sk);

	return tp->packets_out &&
	       FUNC1(sk, FUNC2(sk));
}