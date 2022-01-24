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
struct x25_neigh {int dummy; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 struct sock* FUNC0 (unsigned int,struct x25_neigh*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  x25_list_lock ; 

struct sock *FUNC3(unsigned int lci, struct x25_neigh *nb)
{
	struct sock *s;

	FUNC1(&x25_list_lock);
	s = FUNC0(lci, nb);
	FUNC2(&x25_list_lock);
	return s;
}