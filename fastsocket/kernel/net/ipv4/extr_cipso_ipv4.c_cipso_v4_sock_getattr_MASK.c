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
struct netlbl_lsm_secattr {int dummy; } ;
struct iphdr {int dummy; } ;
struct ip_options {scalar_t__ cipso; scalar_t__ __data; } ;
struct TYPE_2__ {int /*<<< orphan*/  opt; } ;

/* Variables and functions */
 int ENOMSG ; 
 int FUNC0 (scalar_t__,struct netlbl_lsm_secattr*) ; 
 TYPE_1__* FUNC1 (struct sock*) ; 
 struct ip_options* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

int FUNC5(struct sock *sk, struct netlbl_lsm_secattr *secattr)
{
	struct ip_options *opt;
	int res = -ENOMSG;

	FUNC3();
	opt = FUNC2(FUNC1(sk)->opt);
	if (opt && opt->cipso)
		res = FUNC0(opt->__data +
						opt->cipso -
						sizeof(struct iphdr),
				       secattr);
	FUNC4();
	return res;
}