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
typedef  int /*<<< orphan*/  u16 ;
struct sock {int dummy; } ;
struct l2cap_conf_rsp {void* flags; void* result; void* scid; void* data; } ;
struct TYPE_2__ {int /*<<< orphan*/  dcid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct sock*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct sock*) ; 

__attribute__((used)) static int FUNC3(struct sock *sk, void *data, u16 result, u16 flags)
{
	struct l2cap_conf_rsp *rsp = data;
	void *ptr = rsp->data;

	FUNC0("sk %p", sk);

	rsp->scid   = FUNC1(FUNC2(sk)->dcid);
	rsp->result = FUNC1(result);
	rsp->flags  = FUNC1(flags);

	return ptr - data;
}