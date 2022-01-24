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
struct net {int dummy; } ;
struct flowi {int dummy; } ;
struct dst_entry {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EREMOTE ; 
 int FUNC0 (struct net*,struct dst_entry**,struct flowi*,struct sock*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dst_entry*) ; 

int FUNC2(struct net *net, struct dst_entry **dst_p, struct flowi *fl,
		struct sock *sk, int flags)
{
	int err = FUNC0(net, dst_p, fl, sk, flags);

	if (err == -EREMOTE) {
		FUNC1(*dst_p);
		*dst_p = NULL;
		err = -EAGAIN;
	}

	return err;
}