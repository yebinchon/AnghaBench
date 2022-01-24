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
struct xfrm_policy {int dummy; } ;
struct sock {struct xfrm_policy** sk_policy; } ;

/* Variables and functions */
 int ENOMEM ; 
 void* FUNC0 (struct xfrm_policy*,int) ; 

int FUNC1(struct sock *sk)
{
	struct xfrm_policy *p0 = sk->sk_policy[0],
			   *p1 = sk->sk_policy[1];

	sk->sk_policy[0] = sk->sk_policy[1] = NULL;
	if (p0 && (sk->sk_policy[0] = FUNC0(p0, 0)) == NULL)
		return -ENOMEM;
	if (p1 && (sk->sk_policy[1] = FUNC0(p1, 1)) == NULL)
		return -ENOMEM;
	return 0;
}