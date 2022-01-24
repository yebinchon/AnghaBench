#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sock {int dummy; } ;
struct hlist_head {int dummy; } ;
struct dn_scp {int /*<<< orphan*/  addrloc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct dn_scp* FUNC1 (struct sock*) ; 
 int EADDRINUSE ; 
 int EUSERS ; 
 struct hlist_head* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  dn_hash_lock ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,struct hlist_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct sock *sk)
{
	struct dn_scp *scp = FUNC1(sk);
	struct hlist_head *list;
	int rv = -EUSERS;

	FUNC0(FUNC5(sk));

	FUNC6(&dn_hash_lock);

	if (!scp->addrloc && !FUNC3(sk))
		goto out;

	rv = -EADDRINUSE;
	if ((list = FUNC2(sk)) == NULL)
		goto out;

	FUNC4(sk, list);
	rv = 0;
out:
	FUNC7(&dn_hash_lock);
	return rv;
}