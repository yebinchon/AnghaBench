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
typedef  int u32 ;
struct unix_sock {int /*<<< orphan*/  readlock; struct unix_address* addr; } ;
struct unix_address {size_t hash; scalar_t__ len; TYPE_1__* name; int /*<<< orphan*/  refcnt; } ;
struct socket {int /*<<< orphan*/  type; struct sock* sk; } ;
struct sock {size_t sk_type; } ;
struct net {int dummy; } ;
struct TYPE_3__ {scalar_t__ sun_path; int /*<<< orphan*/  sun_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct net*,TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct unix_address* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct net* FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (scalar_t__,char*,int) ; 
 size_t FUNC12 (int /*<<< orphan*/ ) ; 
 struct unix_sock* FUNC13 (struct sock*) ; 
 int /*<<< orphan*/ * unix_socket_table ; 
 int /*<<< orphan*/  unix_table_lock ; 
 int /*<<< orphan*/  FUNC14 () ; 

__attribute__((used)) static int FUNC15(struct socket *sock)
{
	struct sock *sk = sock->sk;
	struct net *net = FUNC8(sk);
	struct unix_sock *u = FUNC13(sk);
	static u32 ordernum = 1;
	struct unix_address *addr;
	int err;

	FUNC6(&u->readlock);

	err = 0;
	if (u->addr)
		goto out;

	err = -ENOMEM;
	addr = FUNC5(sizeof(*addr) + sizeof(short) + 16, GFP_KERNEL);
	if (!addr)
		goto out;

	addr->name->sun_family = AF_UNIX;
	FUNC3(&addr->refcnt, 1);

retry:
	addr->len = FUNC11(addr->name->sun_path+1, "%05x", ordernum) + 1 + sizeof(short);
	addr->hash = FUNC12(FUNC4(addr->name, addr->len, 0));

	FUNC9(&unix_table_lock);
	ordernum = (ordernum+1)&0xFFFFF;

	if (FUNC0(net, addr->name, addr->len, sock->type,
				      addr->hash)) {
		FUNC10(&unix_table_lock);
		/* Sanity yield. It is unusual case, but yet... */
		if (!(ordernum&0xFF))
			FUNC14();
		goto retry;
	}
	addr->hash ^= sk->sk_type;

	FUNC2(sk);
	u->addr = addr;
	FUNC1(&unix_socket_table[addr->hash], sk);
	FUNC10(&unix_table_lock);
	err = 0;

out:	FUNC7(&u->readlock);
	return err;
}