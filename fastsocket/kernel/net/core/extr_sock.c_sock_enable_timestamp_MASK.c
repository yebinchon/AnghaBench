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

/* Variables and functions */
 int SOCK_TIMESTAMP ; 
 int SOCK_TIMESTAMPING_RX_SOFTWARE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int) ; 

void FUNC3(struct sock *sk, int flag)
{
	if (!FUNC1(sk, flag)) {
		FUNC2(sk, flag);
		/*
		 * we just set one of the two flags which require net
		 * time stamping, but time stamping might have been on
		 * already because of the other one
		 */
		if (!FUNC1(sk,
				flag == SOCK_TIMESTAMP ?
				SOCK_TIMESTAMPING_RX_SOFTWARE :
				SOCK_TIMESTAMP))
			FUNC0();
	}
}