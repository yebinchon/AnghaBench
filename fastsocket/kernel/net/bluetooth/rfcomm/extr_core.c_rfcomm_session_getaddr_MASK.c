#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sock {int dummy; } ;
struct rfcomm_session {TYPE_1__* sock; } ;
typedef  int /*<<< orphan*/  bdaddr_t ;
struct TYPE_4__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct TYPE_3__ {struct sock* sk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (struct sock*) ; 

void FUNC2(struct rfcomm_session *s, bdaddr_t *src, bdaddr_t *dst)
{
	struct sock *sk = s->sock->sk;
	if (src)
		FUNC0(src, &FUNC1(sk)->src);
	if (dst)
		FUNC0(dst, &FUNC1(sk)->dst);
}