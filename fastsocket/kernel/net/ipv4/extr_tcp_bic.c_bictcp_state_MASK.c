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
typedef  scalar_t__ u8 ;
struct sock {int dummy; } ;

/* Variables and functions */
 scalar_t__ TCP_CA_Loss ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 

__attribute__((used)) static void FUNC2(struct sock *sk, u8 new_state)
{
	if (new_state == TCP_CA_Loss)
		FUNC0(FUNC1(sk));
}