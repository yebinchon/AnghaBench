#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sock {TYPE_2__* sk_prot; } ;
struct inet_hashinfo {int /*<<< orphan*/  bsockets; } ;
struct inet_bind_bucket {int /*<<< orphan*/  num_owners; int /*<<< orphan*/  owners; } ;
struct TYPE_8__ {struct inet_bind_bucket* icsk_bind_hash; } ;
struct TYPE_7__ {unsigned short num; } ;
struct TYPE_5__ {struct inet_hashinfo* hashinfo; } ;
struct TYPE_6__ {TYPE_1__ h; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC1 (struct sock*) ; 
 TYPE_3__* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ *) ; 

void FUNC4(struct sock *sk, struct inet_bind_bucket *tb,
		    const unsigned short snum)
{
	struct inet_hashinfo *hashinfo = sk->sk_prot->h.hashinfo;

	FUNC0(&hashinfo->bsockets);

	FUNC2(sk)->num = snum;
	FUNC3(sk, &tb->owners);
	tb->num_owners++;
	FUNC1(sk)->icsk_bind_hash = tb;
}