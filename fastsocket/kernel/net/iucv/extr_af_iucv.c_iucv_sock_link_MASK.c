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
struct iucv_sock_list {int /*<<< orphan*/  lock; int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct iucv_sock_list *l, struct sock *sk)
{
	FUNC1(&l->lock);
	FUNC0(sk, &l->head);
	FUNC2(&l->lock);
}