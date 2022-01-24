#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct sock {int dummy; } ;
struct TYPE_3__ {int retry_count; int /*<<< orphan*/  conn_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  L2CAP_CONN_WAIT_F ; 
 int /*<<< orphan*/  L2CAP_CTRL_POLL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 TYPE_1__* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(unsigned long arg)
{
	struct sock *sk = (void *) arg;
	u16 control;

	FUNC1(sk);
	FUNC3(sk)->retry_count = 1;
	FUNC0();

	FUNC3(sk)->conn_state |= L2CAP_CONN_WAIT_F;

	control = L2CAP_CTRL_POLL;
	FUNC4(FUNC3(sk), control);
	FUNC2(sk);
}