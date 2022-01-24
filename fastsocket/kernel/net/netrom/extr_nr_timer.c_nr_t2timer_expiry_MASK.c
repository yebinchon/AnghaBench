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
struct nr_sock {int condition; } ;

/* Variables and functions */
 int NR_COND_ACK_PENDING ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 struct nr_sock* FUNC3 (struct sock*) ; 

__attribute__((used)) static void FUNC4(unsigned long param)
{
	struct sock *sk = (struct sock *)param;
	struct nr_sock *nr = FUNC3(sk);

	FUNC0(sk);
	if (nr->condition & NR_COND_ACK_PENDING) {
		nr->condition &= ~NR_COND_ACK_PENDING;
		FUNC2(sk);
	}
	FUNC1(sk);
}