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
struct sock {scalar_t__ sk_type; } ;
struct ip_ra_chain {void (* destructor ) (struct sock*) ;struct ip_ra_chain* next; struct sock* sk; } ;
struct TYPE_2__ {scalar_t__ num; } ;

/* Variables and functions */
 int EADDRINUSE ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IPPROTO_RAW ; 
 scalar_t__ SOCK_RAW ; 
 TYPE_1__* FUNC0 (struct sock*) ; 
 struct ip_ra_chain* ip_ra_chain ; 
 int /*<<< orphan*/  ip_ra_lock ; 
 int /*<<< orphan*/  FUNC1 (struct ip_ra_chain*) ; 
 struct ip_ra_chain* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 void FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct sock *sk, unsigned char on,
		  void (*destructor)(struct sock *))
{
	struct ip_ra_chain *ra, *new_ra, **rap;

	if (sk->sk_type != SOCK_RAW || FUNC0(sk)->num == IPPROTO_RAW)
		return -EINVAL;

	new_ra = on ? FUNC2(sizeof(*new_ra), GFP_KERNEL) : NULL;

	FUNC6(&ip_ra_lock);
	for (rap = &ip_ra_chain; (ra = *rap) != NULL; rap = &ra->next) {
		if (ra->sk == sk) {
			if (on) {
				FUNC7(&ip_ra_lock);
				FUNC1(new_ra);
				return -EADDRINUSE;
			}
			*rap = ra->next;
			FUNC7(&ip_ra_lock);

			if (ra->destructor)
				ra->destructor(sk);
			FUNC4(sk);
			FUNC1(ra);
			return 0;
		}
	}
	if (new_ra == NULL) {
		FUNC7(&ip_ra_lock);
		return -ENOBUFS;
	}
	new_ra->sk = sk;
	new_ra->destructor = destructor;

	new_ra->next = ra;
	*rap = new_ra;
	FUNC3(sk);
	FUNC7(&ip_ra_lock);

	return 0;
}