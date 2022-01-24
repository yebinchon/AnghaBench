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
typedef  int u8 ;
struct sock {scalar_t__ sk_type; } ;
struct TYPE_2__ {scalar_t__ sec_level; } ;

/* Variables and functions */
 scalar_t__ BT_SECURITY_HIGH ; 
 scalar_t__ BT_SECURITY_MEDIUM ; 
 int /*<<< orphan*/  ECONNREFUSED ; 
 int HZ ; 
 scalar_t__ SOCK_SEQPACKET ; 
 int /*<<< orphan*/  FUNC0 (struct sock*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int) ; 

__attribute__((used)) static inline void FUNC4(struct sock *sk, u8 encrypt)
{
	if (sk->sk_type != SOCK_SEQPACKET)
		return;

	if (encrypt == 0x00) {
		if (FUNC1(sk)->sec_level == BT_SECURITY_MEDIUM) {
			FUNC2(sk);
			FUNC3(sk, HZ * 5);
		} else if (FUNC1(sk)->sec_level == BT_SECURITY_HIGH)
			FUNC0(sk, ECONNREFUSED);
	} else {
		if (FUNC1(sk)->sec_level == BT_SECURITY_MEDIUM)
			FUNC2(sk);
	}
}