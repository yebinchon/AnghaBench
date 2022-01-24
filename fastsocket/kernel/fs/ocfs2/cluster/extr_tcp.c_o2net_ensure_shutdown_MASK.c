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
struct o2net_sock_container {int dummy; } ;
struct o2net_node {int /*<<< orphan*/  nn_lock; struct o2net_sock_container* nn_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct o2net_node*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct o2net_node *nn,
			           struct o2net_sock_container *sc,
				   int err)
{
	FUNC1(&nn->nn_lock);
	if (nn->nn_sc == sc)
		FUNC0(nn, NULL, 0, err);
	FUNC2(&nn->nn_lock);
}