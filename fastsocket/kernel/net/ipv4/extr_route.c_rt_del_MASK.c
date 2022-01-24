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
struct TYPE_4__ {struct rtable* rt_next; } ;
struct TYPE_5__ {TYPE_1__ dst; } ;
struct rtable {TYPE_2__ u; } ;
struct TYPE_6__ {struct rtable* chain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtable*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtable*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 TYPE_3__* rt_hash_table ; 
 scalar_t__ FUNC3 (struct rtable*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(unsigned hash, struct rtable *rt)
{
	struct rtable **rthp, *aux;

	rthp = &rt_hash_table[hash].chain;
	FUNC4(FUNC2(hash));
	FUNC0(rt);
	while ((aux = *rthp) != NULL) {
		if (aux == rt || FUNC3(aux)) {
			*rthp = aux->u.dst.rt_next;
			FUNC1(aux);
			continue;
		}
		rthp = &aux->u.dst.rt_next;
	}
	FUNC5(FUNC2(hash));
}