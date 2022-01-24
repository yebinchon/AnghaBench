#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct udp_table {struct udp_hslot* hash; } ;
struct udp_hslot {int /*<<< orphan*/  lock; int /*<<< orphan*/  head; } ;
struct sock {unsigned short sk_hash; TYPE_2__* sk_prot; } ;
struct net {int dummy; } ;
struct TYPE_6__ {unsigned short num; } ;
struct TYPE_4__ {struct udp_table* udp_table; } ;
struct TYPE_5__ {TYPE_1__ h; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PORTS_PER_CHAIN ; 
 unsigned int UDP_HTABLE_SIZE ; 
 int /*<<< orphan*/ * bitmap ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned short) ; 
 TYPE_3__* FUNC4 (struct sock*) ; 
 unsigned int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct sock*) ; 
 struct net* FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct net*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (unsigned short,int /*<<< orphan*/ *) ; 
 size_t FUNC13 (struct net*,unsigned short) ; 
 scalar_t__ FUNC14 (struct net*,unsigned short,struct udp_hslot*,int /*<<< orphan*/ *,struct sock*,int (*) (struct sock const*,struct sock const*)) ; 

int FUNC15(struct sock *sk, unsigned short snum,
		       int (*saddr_comp)(const struct sock *sk1,
					 const struct sock *sk2))
{
	struct udp_hslot *hslot;
	struct udp_table *udptable = sk->sk_prot->h.udp_table;
	int    error = 1;
	struct net *net = FUNC8(sk);

	if (!snum) {
		int low, high, remaining;
		unsigned rand;
		unsigned short first, last;
		FUNC0(bitmap, PORTS_PER_CHAIN);

		FUNC2(&low, &high);
		remaining = (high - low) + 1;

		rand = FUNC5();
		first = (((u64)rand * remaining) >> 32) + low;
		/*
		 * force rand to be an odd multiple of UDP_HTABLE_SIZE
		 */
		rand = (rand | 1) * UDP_HTABLE_SIZE;
		for (last = first + UDP_HTABLE_SIZE; first != last; first++) {
			hslot = &udptable->hash[FUNC13(net, first)];
			FUNC1(bitmap, PORTS_PER_CHAIN);
			FUNC10(&hslot->lock);
			FUNC14(net, snum, hslot, bitmap, sk,
					    saddr_comp);

			snum = first;
			/*
			 * Iterate on all possible values of snum for this hash.
			 * Using steps of an odd multiple of UDP_HTABLE_SIZE
			 * give us randomization and full range coverage.
			 */
			do {
				if (low <= snum && snum <= high &&
				    !FUNC12(snum / UDP_HTABLE_SIZE, bitmap) &&
				    !FUNC3(snum))
					goto found;
				snum += rand;
			} while (snum != first);
			FUNC11(&hslot->lock);
		}
		goto fail;
	} else {
		hslot = &udptable->hash[FUNC13(net, snum)];
		FUNC10(&hslot->lock);
		if (FUNC14(net, snum, hslot, NULL, sk, saddr_comp))
			goto fail_unlock;
	}
found:
	FUNC4(sk)->num = snum;
	sk->sk_hash = snum;
	if (FUNC7(sk)) {
		FUNC6(sk, &hslot->head);
		FUNC9(FUNC8(sk), sk->sk_prot, 1);
	}
	error = 0;
fail_unlock:
	FUNC11(&hslot->lock);
fail:
	return error;
}