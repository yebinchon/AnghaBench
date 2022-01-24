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
struct TYPE_2__ {scalar_t__ md5sig_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 TYPE_1__* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 

__attribute__((used)) static void FUNC4(struct sock *sk)
{
#ifdef CONFIG_TCP_MD5SIG
	/* Clean up the MD5 key list */
	if (tcp_sk(sk)->md5sig_info)
		tcp_v6_clear_md5_list(sk);
#endif
	FUNC2(sk);
	FUNC0(sk);
}