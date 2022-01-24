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
struct TYPE_5__ {int /*<<< orphan*/ * tail; int /*<<< orphan*/  head; } ;
struct sock {size_t sk_family; int sk_userlocks; TYPE_3__* sk_prot; int /*<<< orphan*/ * sk_sleep; int /*<<< orphan*/  sk_refcnt; scalar_t__ sk_priority; scalar_t__ sk_err; int /*<<< orphan*/ * sk_destruct; struct sk_filter* sk_filter; int /*<<< orphan*/  sk_error_queue; int /*<<< orphan*/ * sk_send_head; scalar_t__ sk_forward_alloc; scalar_t__ sk_wmem_queued; int /*<<< orphan*/ * sk_dst_cache; int /*<<< orphan*/  sk_callback_lock; int /*<<< orphan*/  sk_dst_lock; int /*<<< orphan*/  sk_async_wait_queue; int /*<<< orphan*/  sk_write_queue; int /*<<< orphan*/  sk_receive_queue; int /*<<< orphan*/  sk_omem_alloc; int /*<<< orphan*/  sk_wmem_alloc; int /*<<< orphan*/  sk_rmem_alloc; TYPE_1__ sk_backlog; int /*<<< orphan*/  sk_node; } ;
struct sk_filter {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_6__ {scalar_t__ len; } ;
struct TYPE_8__ {TYPE_2__ sk_backlog; } ;
struct TYPE_7__ {scalar_t__ sockets_allocated; } ;

/* Variables and functions */
 int SOCK_BINDPORT_LOCK ; 
 int /*<<< orphan*/  SOCK_DONE ; 
 int /*<<< orphan*/  SOCK_TIMESTAMP ; 
 int /*<<< orphan*/  SOCK_TIMESTAMPING_RX_SOFTWARE ; 
 scalar_t__ af_callback_keys ; 
 int /*<<< orphan*/ * af_family_clock_key_strings ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,struct sk_filter*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct sock* FUNC11 (TYPE_3__*,int /*<<< orphan*/  const,size_t) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (struct sock*,struct sock const*) ; 
 scalar_t__ FUNC17 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct sock*) ; 
 int /*<<< orphan*/  FUNC19 (struct sock*) ; 
 int /*<<< orphan*/  FUNC20 (struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct sock*) ; 

struct sock *FUNC23(const struct sock *sk, const gfp_t priority)
{
	struct sock *newsk;

	newsk = FUNC11(sk->sk_prot, priority, sk->sk_family);
	if (newsk != NULL) {
		struct sk_filter *filter;

		FUNC16(newsk, sk);

		/* SANITY */
		FUNC2(FUNC19(newsk));
		FUNC10(&newsk->sk_node);
		FUNC18(newsk);
		FUNC1(newsk);
		newsk->sk_backlog.head	= *(newsk->sk_backlog.tail = NULL);
		FUNC7(newsk)->sk_backlog.len = 0;

		FUNC0(&newsk->sk_rmem_alloc, 0);
		/*
		 * sk_wmem_alloc set to one (see sk_free() and sock_wfree())
		 */
		FUNC0(&newsk->sk_wmem_alloc, 1);
		FUNC0(&newsk->sk_omem_alloc, 0);
		FUNC14(&newsk->sk_receive_queue);
		FUNC14(&newsk->sk_write_queue);
#ifdef CONFIG_NET_DMA
		skb_queue_head_init(&newsk->sk_async_wait_queue);
#endif

		FUNC6(&newsk->sk_dst_lock);
		FUNC6(&newsk->sk_callback_lock);
		FUNC3(&newsk->sk_callback_lock,
				af_callback_keys + newsk->sk_family,
				af_family_clock_key_strings[newsk->sk_family]);

		newsk->sk_dst_cache	= NULL;
		newsk->sk_wmem_queued	= 0;
		newsk->sk_forward_alloc = 0;
		newsk->sk_send_head	= NULL;
		newsk->sk_userlocks	= sk->sk_userlocks & ~SOCK_BINDPORT_LOCK;

		FUNC20(newsk, SOCK_DONE);
		FUNC14(&newsk->sk_error_queue);

		filter = newsk->sk_filter;
		if (filter != NULL)
			FUNC8(newsk, filter);

		if (FUNC21(FUNC22(newsk))) {
			/* It is still raw copy of parent, so invalidate
			 * destructor and make plain sk_free() */
			newsk->sk_destruct = NULL;
			FUNC9(newsk);
			newsk = NULL;
			goto out;
		}

		newsk->sk_err	   = 0;
		newsk->sk_priority = 0;
		/*
		 * Before updating sk_refcnt, we must commit prior changes to memory
		 * (Documentation/RCU/rculist_nulls.txt for details)
		 */
		FUNC15();
		FUNC0(&newsk->sk_refcnt, 2);

		/*
		 * Increment the counter in the same struct proto as the master
		 * sock (sk_refcnt_debug_inc uses newsk->sk_prot->socks, that
		 * is the same as sk->sk_prot->socks, as this field was copied
		 * with memcpy).
		 *
		 * This _changes_ the previous behaviour, where
		 * tcp_create_openreq_child always was incrementing the
		 * equivalent to tcp_prot->socks (inet_sock_nr), so this have
		 * to be taken into account in all callers. -acme
		 */
		FUNC12(newsk);
		FUNC13(newsk, NULL);
		newsk->sk_sleep	 = NULL;

		if (newsk->sk_prot->sockets_allocated)
			FUNC5(newsk->sk_prot->sockets_allocated);

		if (FUNC17(newsk, SOCK_TIMESTAMP) ||
		    FUNC17(newsk, SOCK_TIMESTAMPING_RX_SOFTWARE))
			FUNC4();
	}
out:
	return newsk;
}